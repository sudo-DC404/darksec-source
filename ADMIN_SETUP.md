# Secure Admin Panel Setup

## Admin Panel URL
**SECRET URL:** `https://darksec.uk/secure-panel-5959cea72bf1a7820930f046f3f64128`

⚠️ **DO NOT SHARE THIS URL PUBLICLY** ⚠️

## Security Setup with Cloudflare Access

To protect your admin panel, set up Cloudflare Access (it's FREE for up to 50 users):

### Step 1: Enable Cloudflare Access

1. Go to your Cloudflare Dashboard
2. Select your domain (darksec.uk)
3. Go to **Zero Trust** in the left sidebar
4. Click **Access** → **Applications**
5. Click **Add an application**
6. Choose **Self-hosted**

### Step 2: Configure Application

Fill in these details:
- **Application name:** DarkSec Admin Panel
- **Session duration:** 24 hours (or your preference)
- **Application domain:** `darksec.uk`
- **Path:** `/secure-panel-5959cea72bf1a7820930f046f3f64128`

### Step 3: Create Access Policy

Create a policy to control who can access:

**Policy name:** Admin Only

**Action:** Allow

**Configure rules:**
- **Include:** Emails
- **Add your email address** and any admin emails

Example:
- your-email@gmail.com
- admin-friend@gmail.com

### Step 4: Save

Click **Save application**

## How It Works

1. When someone tries to access the admin panel URL, Cloudflare Access intercepts them
2. They must log in with an approved email address
3. Cloudflare sends them a verification code
4. Once verified, they can access the admin panel
5. Sessions last 24 hours (or whatever you set)

## Alternative: Cloudflare Access with GitHub/Google

You can also allow login via:
- GitHub accounts
- Google accounts
- Other OAuth providers

Just select those options when creating the Access policy.

## For Team Members

Share this information with approved admins:
- The secret URL (send it privately, not in public channels)
- Their email must be added to the Access policy
- They'll receive a login code via email when accessing

## Changing the Secret URL

If the URL ever gets compromised, just tell me and I'll generate a new one.

## No Password Needed!

With Cloudflare Access, you don't need a password in the code. It's enterprise-grade authentication that's:
- ✅ Secure
- ✅ Free (up to 50 users)
- ✅ Easy to manage
- ✅ Works with email verification
- ✅ Supports 2FA

## Cost

Cloudflare Access is **FREE** for up to 50 users. Perfect for your team!
