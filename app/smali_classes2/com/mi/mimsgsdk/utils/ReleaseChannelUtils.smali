.class public Lcom/mi/mimsgsdk/utils/ReleaseChannelUtils;
.super Ljava/lang/Object;
.source "ReleaseChannelUtils.java"


# static fields
.field private static DEFAULT_CHANNEL:Ljava/lang/String;

.field private static curChannel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DEFAULT"

    sput-object v0, Lcom/mi/mimsgsdk/utils/ReleaseChannelUtils;->DEFAULT_CHANNEL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getReleaseChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/mi/mimsgsdk/utils/ReleaseChannelUtils;->curChannel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "@SHIP.TO.2A2FE0D7@"

    sget-object v1, Lcom/mi/mimsgsdk/utils/ReleaseChannelUtils;->DEFAULT_CHANNEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/mi/mimsgsdk/utils/Constants;->isDefaultChanel:Z

    if-eqz v0, :cond_1

    const-string v0, "DEBUG"

    sput-object v0, Lcom/mi/mimsgsdk/utils/ReleaseChannelUtils;->curChannel:Ljava/lang/String;

    :goto_0
    const-string v0, "pref_channel"

    const-string v1, "@SHIP.TO.2A2FE0D7@"

    invoke-static {p0, v0, v1}, Lcom/mi/mimsgsdk/upload/PreferenceUtils;->setSettingString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    sget-object v0, Lcom/mi/mimsgsdk/utils/ReleaseChannelUtils;->curChannel:Ljava/lang/String;

    const-string v1, "3000_1_android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/xiaomi/channel/common/audio/CommonUtils;->isChineseLocale(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "3000_2_android"

    sput-object v0, Lcom/mi/mimsgsdk/utils/ReleaseChannelUtils;->curChannel:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/mi/mimsgsdk/utils/ReleaseChannelUtils;->curChannel:Ljava/lang/String;

    return-object v0

    :cond_1
    const-string v0, "@SHIP.TO.2A2FE0D7@"

    sput-object v0, Lcom/mi/mimsgsdk/utils/ReleaseChannelUtils;->curChannel:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "pref_channel"

    sget-object v1, Lcom/mi/mimsgsdk/utils/ReleaseChannelUtils;->DEFAULT_CHANNEL:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/mi/mimsgsdk/upload/PreferenceUtils;->getSettingString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mi/mimsgsdk/utils/ReleaseChannelUtils;->curChannel:Ljava/lang/String;

    goto :goto_1
.end method
