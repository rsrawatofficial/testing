import os

api_id = 20736921
api_hash = os.environ.get("API_HASH", "42b34442e52dc3e07b3e0783389be8cb")
bot_token = os.environ.get("BOT_TOKEN")
auth_users = os.environ.get("AUTH_USERS", "1366730834")
sudo_users = [int(num) for num in auth_users.split(",")]
osowner_users = os.environ.get("OWNER_USERS", "1366730834")
owner_users = [int(num) for num in osowner_users.split(",")]
