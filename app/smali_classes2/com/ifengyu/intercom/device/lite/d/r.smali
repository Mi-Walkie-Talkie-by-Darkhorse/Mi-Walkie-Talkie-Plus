.class public Lcom/ifengyu/intercom/device/lite/d/r;
.super Ljava/lang/Object;
.source "LiteFirmwarePreferenceManager.java"


# static fields
.field private static a:Landroid/content/SharedPreferences;

.field private static b:Lcom/ifengyu/intercom/device/lite/d/r;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "lite_firmware"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    sput-object p1, Lcom/ifengyu/intercom/device/lite/d/r;->a:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static d(Landroid/content/Context;)Lcom/ifengyu/intercom/device/lite/d/r;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/device/lite/d/r;->b:Lcom/ifengyu/intercom/device/lite/d/r;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/device/lite/d/r;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/device/lite/d/r;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ifengyu/intercom/device/lite/d/r;->b:Lcom/ifengyu/intercom/device/lite/d/r;

    .line 3
    :cond_0
    sget-object p0, Lcom/ifengyu/intercom/device/lite/d/r;->b:Lcom/ifengyu/intercom/device/lite/d/r;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/ifengyu/intercom/http/entity/VersionInfo;
    .locals 10

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/device/lite/d/r;->a:Landroid/content/SharedPreferences;

    const-string v1, "firmware_version_code"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2
    sget-object v1, Lcom/ifengyu/intercom/device/lite/d/r;->a:Landroid/content/SharedPreferences;

    const-string v2, "firmware_version_name"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/ifengyu/intercom/device/lite/d/r;->a:Landroid/content/SharedPreferences;

    const-string v4, "firmware_version_source"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    sget-object v4, Lcom/ifengyu/intercom/device/lite/d/r;->a:Landroid/content/SharedPreferences;

    const-string v5, "firmware_version_info"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5
    sget-object v5, Lcom/ifengyu/intercom/device/lite/d/r;->a:Landroid/content/SharedPreferences;

    const-string v6, "firmware_version_md5"

    invoke-interface {v5, v6, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6
    sget-object v6, Lcom/ifengyu/intercom/device/lite/d/r;->a:Landroid/content/SharedPreferences;

    const-string v7, "firmware_version_lang"

    invoke-interface {v6, v7, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 7
    sget-object v7, Lcom/ifengyu/intercom/device/lite/d/r;->a:Landroid/content/SharedPreferences;

    const-string v8, "firmware_local_path"

    invoke-interface {v7, v8, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8
    sget-object v7, Lcom/ifengyu/intercom/device/lite/d/r;->a:Landroid/content/SharedPreferences;

    const-string v8, "firmware_upgrade_mode"

    const/4 v9, 0x1

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 9
    new-instance v8, Lcom/ifengyu/intercom/http/entity/VersionInfo;

    invoke-direct {v8}, Lcom/ifengyu/intercom/http/entity/VersionInfo;-><init>()V

    .line 10
    invoke-virtual {v8, v2}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->setSource(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v8, v0}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->setVersionCode(I)V

    .line 12
    invoke-virtual {v8, v1}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->setVersionName(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v8, v4}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->setInfo(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v8, v5}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->setMd5(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v8, v6}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->setLang(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v8, v3}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->setLocalPath(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v8, v7}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->setMode(I)V

    return-object v8
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/device/lite/d/r;->a:Landroid/content/SharedPreferences;

    const-string v1, "firmware_local_path"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 3

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/device/lite/d/r;->a:Landroid/content/SharedPreferences;

    const-string v1, "firmware_version_code"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public e(Lcom/ifengyu/intercom/http/entity/VersionInfo;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/device/lite/d/r;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getVersionCode()I

    move-result v1

    const-string v2, "firmware_version_code"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getVersionName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "firmware_version_name"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getSource()Ljava/lang/String;

    move-result-object v1

    const-string v2, "firmware_version_source"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getMd5()Ljava/lang/String;

    move-result-object v1

    const-string v2, "firmware_version_md5"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "firmware_version_info"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getLang()Ljava/lang/String;

    move-result-object v1

    const-string v2, "firmware_version_lang"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getMode()I

    move-result p1

    const-string v1, "firmware_upgrade_mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 9
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/device/lite/d/r;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "firmware_local_path"

    .line 2
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
