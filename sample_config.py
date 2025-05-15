import os

api_id = 27900743
api_hash = os.environ.get("API_HASH", "ebb06ea8d41420e60b29140dcee902fc")
bot_token = os.environ.get("BOT_TOKEN", "7609528498:AAGqcl_h-Cygc4v_oiXqD4cbp-yGypVcakY")
auth_users = os.environ.get("AUTH_USERS", "7804396225")
sudo_users = [int(num) for num in auth_users.split(",")]
osowner_users = os.environ.get("OWNER_USERS", "7804396225")
owner_users = [int(num) for num in osowner_users.split(",")]
