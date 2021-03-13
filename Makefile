SHELL=/bin/bash

.PHONY: lint

define dhall-lint
	$(DHALL) lint --inplace $(1)
endef

define lint
	find $(1) -type f \( -not -iname *.md \) -exec $(call dhall-lint,{}) \;
endef

TASK_DONE = echo "✓ $@ done"
# vim:noexpandtab:ts=8:sw=8:ai
