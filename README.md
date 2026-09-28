# fork-guard-poc

Self-contained, safe demonstration of the missing fork-origin guard reported in
Google IssueTracker **566062074** (OSS VRP): fork `pull_request` code executing on
runners because base-repo-evaluated `if:` conditions
(`github.repository ==`, `github.repository_owner ==`, `github.event.repository.fork == false`)
are non-guards, while the correct discriminator
`github.event.pull_request.head.repo.full_name == github.repository` is absent.

This PoC runs **only on GitHub-hosted ubuntu runners**, uses **no secrets**, and does
**not** touch Google infrastructure. See `.github/workflows/fork-guard-demo.yml`.

Base repo: `venkatchalla06/fork-guard-poc`. Fork: `cvredd/fork-guard-poc`.
A fork PR overwrites `poc/marker.sh`; the `runs-pr-code-under-nonguard` job (guarded
only by `github.repository ==`, exactly like jax `ci-build.yaml`) checks out and runs it.
