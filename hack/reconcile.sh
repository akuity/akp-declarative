#!/bin/bash

INSTANCE_NAME=$1
INSTANCE_PATH=$2

DIFF=$(akuity argocd diff "$INSTANCE_NAME" -f "$INSTANCE_PATH" 2>&1)
ret=$?
if [ $ret -ne 0 ]; then
    if [ -z "$PR_NUMBER" ]; then
        akuity argocd apply -f "$INSTANCE_PATH"
    else
        gh pr comment $PR_NUMBER -b "**Argo CD \`$INSTANCE_NAME\`:**
\`\`\`diff$DIFF
\`\`\`"
    fi
else
    if [[ ! -z "$PR_NUMBER" ]]; then
    gh pr comment $PR_NUMBER -b "**Argo CD \`$INSTANCE_NAME\`:**
✅ No changes detected."
    fi
fi
