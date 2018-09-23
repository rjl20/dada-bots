#!/usr/bin/env python3
# An extremely minimal script to take the output of a command and post it to Mastodon.

from mastodon import Mastodon
import subprocess
import re

# Set up Mastodon
mastodon = Mastodon(
        access_token = '--- Get an access token from https://botsin.space/settings/applications ---',
        api_base_url = 'https://botsin.space/'
    )

toot = subprocess.check_output(["/usr/local/bin/dada", "/home/hades/dada-bots/warehouse-bot.pb"]).decode("utf-8")
# I'm not sure why pb is wrapping lines, but undo that.
toot = re.sub(r"\n\n", "---NEWLINE---", toot)
toot = re.sub(r"\n", "", toot)
toot = re.sub(r"---NEWLINE---", "\n\n", toot)
mastodon.status_post(toot)
