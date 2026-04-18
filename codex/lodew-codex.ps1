$ErrorActionPreference = "Stop"

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$RepoDir = Resolve-Path (Join-Path $ScriptDir "..")
$PromptFile = Join-Path $RepoDir "prompts/SystemPrompt.txt"

if (-not (Get-Command codex -ErrorAction SilentlyContinue)) {
    Write-Error "codex command not found on PATH."
    exit 127
}

if (-not (Test-Path $PromptFile)) {
    Write-Error "prompt file not found: $PromptFile"
    exit 1
}

$Prompt = Get-Content -Raw -Path $PromptFile
$ConfigValue = "developer_instructions='''$Prompt'''"
& codex -c $ConfigValue @args
exit $LASTEXITCODE

