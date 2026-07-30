[CmdletBinding()]
param()

$ErrorActionPreference = 'Stop'
$repo = Split-Path -Parent $PSScriptRoot

$requiredFiles = @(
    'README.md',
    'CHATGPT_MASTER_KNOWLEDGE.md',
    'KNOWLEDGE_INDEX.md',
    'docs/SAGA_PRODUCT_PORTFOLIO.md',
    'docs/STATUS_LEGEND.md',
    'docs/UPDATE_PROTOCOL.md',
    'docs/SOURCE_REGISTRY.md',
    'changelog/PORTFOLIO_CHANGELOG.md'
)

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

$errors = [System.Collections.Generic.List[string]]::new()

foreach ($relative in $requiredFiles) {
    $path = Join-Path $repo $relative
    if (-not (Test-Path -LiteralPath $path -PathType Leaf)) {
        $errors.Add("Missing required file: $relative")
    }
}

foreach ($product in $products) {
    foreach ($name in @('PRODUCT.md', 'CHANGELOG.md')) {
        $relative = "products/$product/$name"
        $path = Join-Path $repo $relative
        if (-not (Test-Path -LiteralPath $path -PathType Leaf)) {
            $errors.Add("Missing product file: $relative")
            continue
        }

        $content = Get-Content -LiteralPath $path -Raw
        foreach ($heading in @('## Ringkasan', '## Status saat ini')) {
            if ($name -eq 'PRODUCT.md' -and $content -notmatch [regex]::Escape($heading)) {
                $errors.Add("$relative missing heading: $heading")
            }
        }
    }
}

$publicText = Get-ChildItem -LiteralPath $repo -Recurse -File -Filter '*.md' |
    ForEach-Object { Get-Content -LiteralPath $_.FullName -Raw }
$joined = $publicText -join "`n"

$forbiddenPatterns = @(
    'sk-[A-Za-z0-9_-]{20,}',
    '-----BEGIN (RSA |OPENSSH |EC )?PRIVATE KEY-----',
    'password\s*[:=]\s*[^\s`]+',
    'Bearer\s+[A-Za-z0-9._-]{20,}'
)

foreach ($pattern in $forbiddenPatterns) {
    if ($joined -match $pattern) {
        $errors.Add("Potential secret pattern found: $pattern")
    }
}

if ($errors.Count -gt 0) {
    $errors | ForEach-Object { Write-Error $_ }
    exit 1
}

Write-Output "Knowledge validation passed."
Write-Output "Products: $($products.Count)"
Write-Output "Required files: $($requiredFiles.Count)"
