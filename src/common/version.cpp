#include "version.h"

const char* version::GetGitSha()
{
    return "b0ed634115-dirty";
}

const char* version::GetGitBranch()
{
    return "base";
}

const char* version::GetGitDate()
{
    return "Fri Jun 26 22:59:41 2026";
}

const char* version::GetGitCommitSubject()
{
    return "merge navmeshes";
}

const char* version::GetVersionString()
{
    return "base (b0ed634115-dirty)";
}
