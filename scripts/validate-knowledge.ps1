[CmdletBinding()]
param()

$ErrorActionPreference = 'Stop'
$repo = Split-Path -Parent $PSScriptRoot
$errors = [System.Collections.Generic.List[string]]::new()

$products = @(
    'sagabook',
    'sagaview',
    'sagabio',
    'sagamenu',
    'sagafin',
    'coyabag',
    'aogticvity',
    'saga-platform',
    'sagaops',
    'saga-ai'
)

$requiredFiles = @(
    'README.md',
    'INDEX.md',
    'GAPS.md',
    'CHANGELOG.md',
    'CHATGPT_MASTER_KNOWLEDGE.md',
    'KNOWLEDGE_INDEX.md',
    'docs/SAGA_PRODUCT_PORTFOLIO.md',
    'docs/STATUS_LEGEND.md',
    'docs/UPDATE_PROTOCOL.md',
    'docs/SOURCE_REGISTRY.md',
    'docs/CHATGPT_IMPORT_GUIDE.md',
    'docs/brand/BRAND_GUIDELINES.md',
    'docs/brand/TONE_OF_VOICE.md',
    'docs/marketing/CONTENT_PILLARS.md',
    'docs/business/CUSTOMER_SEGMENTS.md',
    'docs/business/BUSINESS_STRATEGY.md',
    'docs/business/SALES_STRATEGY.md',
    'docs/business/MARKETING_STRATEGY.md',
    'docs/design/DESIGN_SYSTEM.md',
    'docs/governance/FACT_CLASSIFICATION.md',
    'docs/governance/KNOWLEDGE_GOVERNANCE.md',
    'docs/technical/TECHNICAL_STANDARDS.md',
    'docs/technical/AUTHENTICATION_AND_PERMISSIONS.md',
    'docs/technical/PAYMENT_FLOW.md',
    'docs/technical/NOTIFICATION_SYSTEM.md',
    'docs/technical/AI_USAGE_GUIDELINES.md',
    'docs/technical/DATA_PRIVACY.md',
    'docs/technical/DEPLOYMENT_PROCESS.md',
    'docs/technical/CODING_CONVENTIONS.md',
    'changelog/PORTFOLIO_CHANGELOG.md',
    'templates/PRODUCT_UPDATE_TEMPLATE.md',
    'templates/PRODUCT_DOSSIER_TEMPLATE.md'
)

$requiredDossierHeadings = @(
    '## Tujuan dokumen',
    '## Konteks dan status bukti',
    '## Overview produk',
    '## Masalah yang diselesaikan',
    '## Target pengguna',
    '## Persona pengguna',
    '## Value proposition',
    '## Use case',
    '## Fitur utama',
    '## Fitur MVP',
    '## Roadmap',
    '## User journey',
    '## User flow',
    '## Business model',
    '## Pricing',
    '## Kompetitor',
    '## Diferensiasi produk',
    '## Brand positioning',
    '## Messaging',
    '## FAQ',
    '## Technical overview',
    '## Integrasi',
    '## Data yang digunakan',
    '## Risiko dan asumsi',
    '## KPI dan success metrics',
    '## Ide konten pemasaran',
    '## Contoh caption',
    '## Ide campaign',
    '## Sales talking points',
    '## Objection handling',
    '## Keputusan dan gap'
)

foreach ($relative in $requiredFiles) {
    $path = Join-Path $repo $relative
    if (-not (Test-Path -LiteralPath $path -PathType Leaf)) {
        $errors.Add("Missing required file: $relative")
    }
}

foreach ($product in $products) {
    foreach ($name in @('PRODUCT.md', 'DOSSIER.md', 'CHANGELOG.md')) {
        $relative = "products/$product/$name"
        $path = Join-Path $repo $relative
        if (-not (Test-Path -LiteralPath $path -PathType Leaf)) {
            $errors.Add("Missing product file: $relative")
            continue
        }

        $content = Get-Content -LiteralPath $path -Raw -Encoding utf8
        if ($name -eq 'PRODUCT.md') {
            foreach ($heading in @('## Tujuan dokumen', '## Konteks', '## Ringkasan', '## Status saat ini')) {
                if ($content -notmatch "(?m)^$([regex]::Escape($heading))\s*$") {
                    $errors.Add("$relative missing heading: $heading")
                }
            }
        }

        if ($name -eq 'DOSSIER.md') {
            foreach ($heading in $requiredDossierHeadings) {
                if ($content -notmatch "(?m)^$([regex]::Escape($heading))\s*$") {
                    $errors.Add("$relative missing dossier heading: $heading")
                }
            }
        }
    }
}

$markdownFiles = Get-ChildItem -LiteralPath $repo -Recurse -File -Filter '*.md' |
    Where-Object { $_.FullName -notmatch '[\\/]\.git[\\/]' }

$hashes = @{}

foreach ($file in $markdownFiles) {
    $relative = $file.FullName.Substring($repo.Length + 1).Replace('\', '/')
    $content = Get-Content -LiteralPath $file.FullName -Raw -Encoding utf8

    if ([string]::IsNullOrWhiteSpace($content)) {
        $errors.Add("Empty Markdown file: $relative")
        continue
    }

    $h1Count = [regex]::Matches($content, '(?m)^#\s+\S').Count
    if ($h1Count -ne 1) {
        $errors.Add("$relative must contain exactly one H1; found $h1Count")
    }

    if ($content -notmatch '(?m)^## Tujuan(?: dokumen| repository)?\s*$') {
        $errors.Add("$relative missing purpose heading")
    }

    if ($content -notmatch '(?m)^## Konteks(?: dan status bukti)?\s*$') {
        $errors.Add("$relative missing context heading")
    }

    $replacementCharacter = [string][char]0xFFFD
    $commonMojibakePrefixA = [string][char]0x00E2
    $commonMojibakePrefixB = [string][char]0x00C3
    if ($content.Contains($replacementCharacter) -or
        $content.Contains($commonMojibakePrefixA) -or
        $content.Contains($commonMojibakePrefixB)) {
        $errors.Add("Possible UTF-8 mojibake in $relative")
    }

    $hash = (Get-FileHash -LiteralPath $file.FullName -Algorithm SHA256).Hash
    if ($hashes.ContainsKey($hash)) {
        $errors.Add("Duplicate Markdown content: $relative and $($hashes[$hash])")
    } else {
        $hashes[$hash] = $relative
    }

    foreach ($match in [regex]::Matches($content, '\[[^\]]+\]\(([^)]+)\)')) {
        $link = $match.Groups[1].Value.Trim()
        if ($link -match '^(?:https?://|mailto:|#)') {
            continue
        }

        $target = ($link -split '#', 2)[0]
        if ([string]::IsNullOrWhiteSpace($target)) {
            continue
        }

        try {
            $decoded = [System.Uri]::UnescapeDataString($target)
            $resolved = [System.IO.Path]::GetFullPath((Join-Path $file.DirectoryName $decoded))
            if (-not (Test-Path -LiteralPath $resolved)) {
                $errors.Add("Broken relative link in ${relative}: $link")
            }
        } catch {
            $errors.Add("Invalid relative link in ${relative}: $link")
        }
    }
}

$joined = ($markdownFiles | ForEach-Object {
        Get-Content -LiteralPath $_.FullName -Raw -Encoding utf8
    }) -join "`n"

$forbiddenPatterns = @{
    'OpenAI-style key' = 'sk-[A-Za-z0-9_-]{20,}'
    'Private key block' = '-----BEGIN (?:RSA |OPENSSH |EC )?PRIVATE KEY-----'
    'Hard-coded password' = '(?i)password\s*[:=]\s*[^\s`<\[]+'
    'Bearer token' = '(?i)Bearer\s+[A-Za-z0-9._-]{20,}'
    'Windows private path' = '(?i)\b[A-Z]:\\(?:Users|Andreas Projects)\\'
    'Codex task identifier' = '\b019[0-9a-f]{5}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}\b'
}

foreach ($entry in $forbiddenPatterns.GetEnumerator()) {
    if ($joined -match $entry.Value) {
        $errors.Add("Potential public-safety violation ($($entry.Key))")
    }
}

if ($errors.Count -gt 0) {
    Write-Host 'Knowledge validation failed:' -ForegroundColor Red
    $errors | Sort-Object -Unique | ForEach-Object { Write-Host "- $_" -ForegroundColor Red }
    exit 1
}

Write-Output 'Knowledge validation passed.'
Write-Output "Products: $($products.Count)"
Write-Output "Markdown files: $($markdownFiles.Count)"
Write-Output "Required root/cross-product files: $($requiredFiles.Count)"
Write-Output "Dossier headings per product: $($requiredDossierHeadings.Count)"
Write-Output 'Relative links: passed'
Write-Output 'Public-safety scan: passed'
