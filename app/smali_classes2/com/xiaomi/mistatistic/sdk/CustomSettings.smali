.class public Lcom/xiaomi/mistatistic/sdk/CustomSettings;
.super Ljava/lang/Object;
.source "CustomSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mistatistic/sdk/CustomSettings$a;
    }
.end annotation


# static fields
.field private static a:Z

.field private static b:Z

.field private static c:Z

.field private static d:Z

.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->a:Z

    sput-boolean v1, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->b:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->c:Z

    sput-boolean v1, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->d:Z

    sput-boolean v1, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCustomEvent(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCustomEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static clearData()V
    .locals 2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/k;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Lcom/xiaomi/mistatistic/sdk/controller/d;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/CustomSettings$a;

    invoke-direct {v1}, Lcom/xiaomi/mistatistic/sdk/CustomSettings$a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;)V

    return-void
.end method

.method public static enableMultiProcess(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->b:Z

    sput-object p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->a:Ljava/lang/String;

    return-void
.end method

.method public static isDataUploadingEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->c:Z

    return v0
.end method

.method public static isUploadForegroundPackageEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->e:Z

    return v0
.end method

.method public static isUploadInstalledPackageEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->d:Z

    return v0
.end method

.method public static isUseSystemStatService()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->b:Z

    return v0
.end method

.method public static isUseSystemUploadingService()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->a:Z

    return v0
.end method

.method public static setAppVersion(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static setDataUploadingEnabled(Z)V
    .locals 1

    sput-boolean p0, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->c:Z

    if-eqz p0, :cond_0

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/l;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/controller/l;-><init>()V

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/l;->a()V

    :cond_0
    return-void
.end method

.method public static setPackageName(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static setUploadForegroundPackageEnabled(Z)V
    .locals 0

    sput-boolean p0, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->e:Z

    return-void
.end method

.method public static setUploadInstalledPackageEnabled(Z)V
    .locals 0

    sput-boolean p0, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->d:Z

    return-void
.end method

.method public static setUseSystemStatService(Z)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sput-boolean p0, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->b:Z

    goto :goto_0
.end method

.method public static setUseSystemUploadingService(Z)V
    .locals 0

    sput-boolean p0, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->a:Z

    return-void
.end method
