.class public Lcom/mi/mimsgsdk/utils/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "com.xiaomi"

.field public static final ACTION_OPEN_URL:Ljava/lang/String; = "ml_action_open_url"

.field public static final AC_SIGNAL_FAILED:Ljava/lang/String; = "ac_signal_failed"

.field public static final APP_NAME:Ljava/lang/String; = "MiVtalk"

.field public static final AUTH_TOKEN_HOST:Ljava/lang/String; = "http://voip.game.xiaomi.com/mfas/auth"

.field public static final AUTH_TOKEN_IP:Ljava/lang/String; = "http://120.134.33.113/mfas/auth"

.field public static final AppID:Ljava/lang/String; = "2882303761517284945"

.field public static final AppKey:Ljava/lang/String; = "5941728425945"

.field public static final AppSecret:Ljava/lang/String; = "zZS+X7RnGlAfgytVtn5u+g=="

.field public static final CHECKUPDATE:Ljava/lang/String; = "CheckUpdate"

.field public static final CRASH_EYE_KEY:Ljava/lang/String; = "1fa7e2f0"

.field public static final CRASH_EYE_KEY_DEBUG:Ljava/lang/String; = "b1047700"

.field public static final DB_CHANNEL:Ljava/lang/String; = "DB"

.field public static final DEBUG_CHANNEL:Ljava/lang/String; = "DEBUG"

.field public static final DEFAULT_BG_COLOR_NUM:I = 0x4

.field public static final DEFAULT_COUNTRY_CODE:Ljava/lang/String; = "+86"

.field public static final DEFAULT_COUNTRY_NAME:Ljava/lang/String; = "\u4e2d\u56fd"

.field public static final DOT_SPX:Ljava/lang/String; = ".spx"

.field public static final ERROR_CODE_SUCCESS:I = 0x0

.field public static final ERROR_CODE_TIMEOUT:I = -0x270f

.field public static final EVENT_HIGH_PRIORITY:I = 0x2

.field public static final EVENT_LOW_PRIORITY:I = 0x0

.field public static final EVENT_MIDDLE_PRIORITY:I = 0x1

.field public static final EXTRA_BUDDY_TYPE:Ljava/lang/String; = "extra_buddy_type"

.field public static final EXTRA_LOCAL_CONTACT_ID:Ljava/lang/String; = "extra_local_contact_id"

.field public static final EXTRA_TARGET:Ljava/lang/String; = "extra_target"

.field public static final EXTRA_TELEPHONE_NUMBER:Ljava/lang/String; = "extra_telephone_number"

.field public static final EXTRA_USER_TYPE:Ljava/lang/String; = "extra_user_type"

.field public static final FAST_DOUBLE_CLICK_INTERVAL:I = 0x1f4

.field public static final GET_TICKET_TOO_FREQUENTLY:I = 0x4d1

.field public static final GROUP_CARD_COLOR:Ljava/lang/String; = "group_color"

.field public static final ILLEGAL_VUID:I = 0x4d8

.field public static final ILLEGAL_VUID_MSG:Ljava/lang/String; = "ILLEGAL VUID"

.field public static final KEEP_LOG_DAYS:I = 0x4

.field public static final LOGOFFLOGTAG:Ljava/lang/String; = "VoipLogOff"

.field public static final LOGTAG:Ljava/lang/String; = "MIVTALK"

.field public static final LOG_FILE_PATH:Ljava/lang/String; = "/vtalk/logs/"

.field public static final MAX_BG_COLOR_RANDOM_NUM:I = 0x5

.field public static final MNS_APPID:I = 0x2711

.field public static final NOTIFY_URL:Ljava/lang/String; = "https://data.game.xiaomi.com/vuf.do"

.field public static final NOT_IN_WHITE_LIST:I = 0x85e

.field public static final PRIVACY_POLICY_URL:Ljava/lang/String; = "http://static.game.xiaomi.com/pages/duoliao/privacy_policy.html"

.field public static final RC_HTTP_HOST:Ljava/lang/String; = "https://login.game.xiaomi.com/voip"

.field public static final RELEASE_CHANNEL:Ljava/lang/String;

.field public static final ReleaseChannel:Ljava/lang/String; = "@SHIP.TO.2A2FE0D7@"

.field public static final SINA_SHARE_TITLE:Ljava/lang/String; = "sina_share_title"

.field public static final SINA_SHARE_URL:Ljava/lang/String; = "sina_share_url"

.field public static final STAGING_HTTP_HOST:Ljava/lang/String; = "https://voip.game.xiaomi.com/voip"

.field public static final TAG_TEST:Ljava/lang/String; = "cardcolor"

.field public static final TEST_CHANNEL:Ljava/lang/String; = "TEST"

.field public static final TIME_OUT:I = 0x7530

.field public static final UMENG_KEY:Ljava/lang/String; = "559506ae67e58ee8df00123c"

.field public static final USER_AGREEMENT_URL:Ljava/lang/String; = "http://static.game.xiaomi.com/pages/duoliao/user_agreement.html"

.field public static final USER_CARD_COLOR:Ljava/lang/String; = "user_color"

.field public static final isDefaultChanel:Z

.field public static final useXiaoMiStatisticTool:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "@SHIP.TO.2A2FE0D7@"

    const-string v1, "2A2FE0D7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/mimsgsdk/utils/Constants;->isDefaultChanel:Z

    sget-boolean v0, Lcom/mi/mimsgsdk/utils/Constants;->isDefaultChanel:Z

    if-eqz v0, :cond_0

    const-string v0, "DEBUG"

    :goto_0
    sput-object v0, Lcom/mi/mimsgsdk/utils/Constants;->RELEASE_CHANNEL:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "@SHIP.TO.2A2FE0D7@"

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
