.class public Lio/agora/rtc/internal/RtcEngineImpl;
.super Lio/agora/rtc/d;
.source "RtcEngineImpl.java"

# interfaces
.implements Lio/agora/rtc/internal/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/internal/RtcEngineImpl$a;
    }
.end annotation


# static fields
.field static a:[F

.field private static j:Z


# instance fields
.field private b:Z

.field private c:I

.field private d:Z

.field private e:Landroid/view/OrientationEventListener;

.field private f:J

.field private g:I

.field private h:J

.field private i:Lio/agora/rtc/b;

.field private k:Lio/agora/rtc/a;

.field private l:Lio/agora/rtc/a$d;

.field private m:Lio/agora/rtc/internal/ConnectionChangeBroadcastReceiver;

.field private n:Landroid/net/wifi/WifiManager$WifiLock;

.field private o:Lio/agora/rtc/internal/RtcEngineImpl$a;

.field private p:I

.field private q:I

.field private r:Z

.field private s:I

.field private t:I

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lio/agora/rtc/internal/a;

.field private x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lio/agora/rtc/internal/RtcEngineImpl;->j:Z

    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lio/agora/rtc/internal/RtcEngineImpl;->a:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lio/agora/rtc/a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-wide/16 v2, 0x0

    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v7, 0x0

    invoke-direct {p0}, Lio/agora/rtc/d;-><init>()V

    iput-boolean v7, p0, Lio/agora/rtc/internal/RtcEngineImpl;->b:Z

    iput v7, p0, Lio/agora/rtc/internal/RtcEngineImpl;->c:I

    iput-boolean v7, p0, Lio/agora/rtc/internal/RtcEngineImpl;->d:Z

    iput-wide v2, p0, Lio/agora/rtc/internal/RtcEngineImpl;->f:J

    const/16 v0, 0x3e8

    iput v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->g:I

    iput-wide v2, p0, Lio/agora/rtc/internal/RtcEngineImpl;->h:J

    iput-object v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->k:Lio/agora/rtc/a;

    iput-object v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->l:Lio/agora/rtc/a$d;

    iput-object v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->m:Lio/agora/rtc/internal/ConnectionChangeBroadcastReceiver;

    iput-object v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->n:Landroid/net/wifi/WifiManager$WifiLock;

    iput-object v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->o:Lio/agora/rtc/internal/RtcEngineImpl$a;

    const/4 v0, -0x1

    iput v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->p:I

    iput v7, p0, Lio/agora/rtc/internal/RtcEngineImpl;->q:I

    iput v7, p0, Lio/agora/rtc/internal/RtcEngineImpl;->s:I

    const/4 v0, 0x2

    iput v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->t:I

    iput-object v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->u:Ljava/lang/String;

    iput-boolean v8, p0, Lio/agora/rtc/internal/RtcEngineImpl;->x:Z

    iput-boolean v7, p0, Lio/agora/rtc/internal/RtcEngineImpl;->b:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->v:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lio/agora/rtc/internal/RtcEngineImpl;->k:Lio/agora/rtc/a;

    invoke-direct {p0}, Lio/agora/rtc/internal/RtcEngineImpl;->j()I

    move-result v0

    iput v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->c:I

    invoke-direct {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-static {}, Lio/agora/rtc/internal/c;->a()Ljava/lang/String;

    move-result-object v3

    const-string v0, "RtcEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initialize Agora Rtc Engine device \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' dir \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeObjectInit(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->h:J

    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :try_start_0
    const-string v0, "ro.hardware"

    invoke-static {v0}, Lio/agora/rtc/internal/RtcEngineImpl;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "intel"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :try_start_1
    const-string v2, "os.arch"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "i686"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v7

    :goto_0
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    if-eqz v7, :cond_1

    :cond_0
    const-string v0, "che.android_simulator"

    invoke-direct {p0, v0, v8}, Lio/agora/rtc/internal/RtcEngineImpl;->a(Ljava/lang/String;Z)I

    :cond_1
    new-instance v0, Lio/agora/rtc/internal/a;

    invoke-direct {v0, p1, p0}, Lio/agora/rtc/internal/a;-><init>(Landroid/content/Context;Lio/agora/rtc/internal/a$a;)V

    iput-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->w:Lio/agora/rtc/internal/a;

    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->w:Lio/agora/rtc/internal/a;

    invoke-virtual {v0}, Lio/agora/rtc/internal/a;->a()I

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "RtcEngine"

    const-string v1, "failed to init audio routing controller"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, v8}, Lio/agora/rtc/internal/RtcEngineImpl;->b(Z)V

    :try_start_2
    new-instance v0, Lio/agora/rtc/internal/RtcEngineImpl$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/agora/rtc/internal/RtcEngineImpl$a;-><init>(Lio/agora/rtc/internal/RtcEngineImpl;Lio/agora/rtc/internal/RtcEngineImpl$1;)V

    iput-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->o:Lio/agora/rtc/internal/RtcEngineImpl$a;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->o:Lio/agora/rtc/internal/RtcEngineImpl$a;

    const/16 v2, 0x120

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "RtcEngine"

    const-string v2, "Unable to create PhoneStateListener, "

    invoke-static {v1, v2, v0}, Lio/agora/rtc/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    move v0, v7

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_0
.end method

.method private a(Landroid/content/Context;I)I
    .locals 4

    const/16 v0, -0x9

    packed-switch p2, :pswitch_data_0

    const/4 v0, -0x2

    :goto_0
    return v0

    :pswitch_0
    :try_start_0
    invoke-direct {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "RtcEngine"

    const-string v3, "Do not have enough permission! "

    invoke-static {v2, v3, v1}, Lio/agora/rtc/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_1
    :try_start_1
    const-string v1, "android.permission.INTERNET"

    invoke-direct {p0, p1, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v1, "RtcEngine"

    const-string v2, "Do not have Internet permission!"

    invoke-static {v1, v2}, Lio/agora/rtc/internal/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Ljava/lang/String;I)I
    .locals 4

    const-string v0, "{\"%s\":%d}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Z)I
    .locals 4

    const-string v0, "{\"%s\":%b}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lio/agora/rtc/internal/RtcEngineImpl;)Lio/agora/rtc/internal/a;
    .locals 1

    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->w:Lio/agora/rtc/internal/a;

    return-object v0
.end method

.method private static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/net/Inet4Address;

    invoke-virtual {p0}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const-string v0, "android.permission.INTERNET"

    invoke-direct {p0, p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-direct {p0, p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "android.permission.MODIFY_AUDIO_SETTINGS"

    invoke-direct {p0, p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-boolean v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->d:Z

    if-nez v0, :cond_0

    const-string v0, "android.permission.CAMERA"

    invoke-direct {p0, p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Lio/agora/rtc/internal/f$a;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p2, Lio/agora/rtc/internal/f$a;->a:Lio/agora/rtc/internal/f$b;

    iget v0, v0, Lio/agora/rtc/internal/f$b;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->n:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->n:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    const-string v0, "RtcEngine"

    const-string v1, "hp connection mode detected"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not granted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method static synthetic a(Lio/agora/rtc/internal/RtcEngineImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->f(I)V

    return-void
.end method

.method private a(Landroid/content/Context;Lio/agora/rtc/internal/f$b;)Z
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v6, -0x1

    if-eqz p1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-ge v1, v2, :cond_1

    :cond_0
    iput v6, p0, Lio/agora/rtc/internal/RtcEngineImpl;->p:I

    move v1, v3

    :goto_0
    return v1

    :cond_1
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellInfo;

    if-nez v1, :cond_4

    move v1, v3

    goto :goto_0

    :cond_4
    :try_start_0
    iget v2, p0, Lio/agora/rtc/internal/RtcEngineImpl;->p:I

    if-eq v2, v6, :cond_5

    iget v2, p0, Lio/agora/rtc/internal/RtcEngineImpl;->p:I

    if-nez v2, :cond_6

    :cond_5
    move-object v0, v1

    check-cast v0, Landroid/telephony/CellInfoGsm;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v2

    if-eqz v2, :cond_6

    const/4 v5, 0x0

    iput v5, p0, Lio/agora/rtc/internal/RtcEngineImpl;->p:I

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthGsm;->getDbm()I

    move-result v5

    iput v5, p2, Lio/agora/rtc/internal/f$b;->h:I

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthGsm;->getLevel()I

    move-result v5

    iput v5, p2, Lio/agora/rtc/internal/f$b;->g:I

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthGsm;->getAsuLevel()I

    move-result v2

    iput v2, p2, Lio/agora/rtc/internal/f$b;->i:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v4

    goto :goto_0

    :catch_0
    move-exception v2

    iput v6, p0, Lio/agora/rtc/internal/RtcEngineImpl;->p:I

    :cond_6
    :try_start_1
    iget v2, p0, Lio/agora/rtc/internal/RtcEngineImpl;->p:I

    if-eq v2, v6, :cond_7

    iget v2, p0, Lio/agora/rtc/internal/RtcEngineImpl;->p:I

    if-ne v2, v4, :cond_8

    :cond_7
    move-object v0, v1

    check-cast v0, Landroid/telephony/CellInfoCdma;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v2

    if-eqz v2, :cond_8

    const/4 v5, 0x1

    iput v5, p0, Lio/agora/rtc/internal/RtcEngineImpl;->p:I

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthCdma;->getDbm()I

    move-result v5

    iput v5, p2, Lio/agora/rtc/internal/f$b;->h:I

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthCdma;->getLevel()I

    move-result v5

    iput v5, p2, Lio/agora/rtc/internal/f$b;->g:I

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthCdma;->getAsuLevel()I

    move-result v2

    iput v2, p2, Lio/agora/rtc/internal/f$b;->i:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v1, v4

    goto :goto_0

    :catch_1
    move-exception v2

    iput v6, p0, Lio/agora/rtc/internal/RtcEngineImpl;->p:I

    :cond_8
    :try_start_2
    iget v2, p0, Lio/agora/rtc/internal/RtcEngineImpl;->p:I

    if-eq v2, v6, :cond_9

    iget v2, p0, Lio/agora/rtc/internal/RtcEngineImpl;->p:I

    if-ne v2, v7, :cond_b

    :cond_9
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-ge v2, v5, :cond_a

    move v1, v3

    goto/16 :goto_0

    :cond_a
    move-object v0, v1

    check-cast v0, Landroid/telephony/CellInfoWcdma;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v2

    if-eqz v2, :cond_b

    const/4 v5, 0x2

    iput v5, p0, Lio/agora/rtc/internal/RtcEngineImpl;->p:I

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I

    move-result v5

    iput v5, p2, Lio/agora/rtc/internal/f$b;->h:I

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthWcdma;->getLevel()I

    move-result v5

    iput v5, p2, Lio/agora/rtc/internal/f$b;->g:I

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthWcdma;->getAsuLevel()I

    move-result v2

    iput v2, p2, Lio/agora/rtc/internal/f$b;->i:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move v1, v4

    goto/16 :goto_0

    :catch_2
    move-exception v2

    iput v6, p0, Lio/agora/rtc/internal/RtcEngineImpl;->p:I

    :cond_b
    :try_start_3
    iget v2, p0, Lio/agora/rtc/internal/RtcEngineImpl;->p:I

    if-eq v2, v6, :cond_c

    iget v2, p0, Lio/agora/rtc/internal/RtcEngineImpl;->p:I

    if-ne v2, v8, :cond_d

    :cond_c
    check-cast v1, Landroid/telephony/CellInfoLte;

    invoke-virtual {v1}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v1

    if-eqz v1, :cond_d

    const/4 v2, 0x3

    iput v2, p0, Lio/agora/rtc/internal/RtcEngineImpl;->p:I

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result v2

    iput v2, p2, Lio/agora/rtc/internal/f$b;->h:I

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthLte;->getLevel()I

    move-result v2

    iput v2, p2, Lio/agora/rtc/internal/f$b;->g:I

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthLte;->getAsuLevel()I

    move-result v1

    iput v1, p2, Lio/agora/rtc/internal/f$b;->i:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move v1, v4

    goto/16 :goto_0

    :catch_3
    move-exception v1

    iput v6, p0, Lio/agora/rtc/internal/RtcEngineImpl;->p:I

    :cond_d
    move v1, v3

    goto/16 :goto_0
.end method

.method private b(II)I
    .locals 5

    const-string v0, "che.video.local.rotate_video"

    const-string v1, "{\"degree\":%d,\"rotation\":%d}"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lio/agora/rtc/internal/RtcEngineImpl;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const-string v0, "{\"%s\":\"%s\"}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private b(Landroid/content/Context;)Lio/agora/rtc/internal/f$a;
    .locals 2

    new-instance v0, Lio/agora/rtc/internal/f$a;

    invoke-direct {v0}, Lio/agora/rtc/internal/f$a;-><init>()V

    invoke-direct {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->c(Landroid/content/Context;)Lio/agora/rtc/internal/f$b;

    move-result-object v1

    iput-object v1, v0, Lio/agora/rtc/internal/f$a;->a:Lio/agora/rtc/internal/f$b;

    return-object v0
.end method

.method static synthetic b(Lio/agora/rtc/internal/RtcEngineImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->b:Z

    return v0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const-string v0, "{\"%s\":%s}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private c(Landroid/content/Context;)Lio/agora/rtc/internal/f$b;
    .locals 6

    const/4 v3, 0x0

    new-instance v1, Lio/agora/rtc/internal/f$b;

    invoke-direct {v1}, Lio/agora/rtc/internal/f$b;-><init>()V

    invoke-direct {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, v1, Lio/agora/rtc/internal/f$b;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, v1, Lio/agora/rtc/internal/f$b;->k:Ljava/lang/String;

    iput v3, v1, Lio/agora/rtc/internal/f$b;->h:I

    iput v3, v1, Lio/agora/rtc/internal/f$b;->g:I

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lio/agora/rtc/internal/RtcEngineImpl;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, v1, Lio/agora/rtc/internal/f$b;->a:Ljava/lang/String;

    :cond_1
    invoke-static {p1}, Lio/agora/rtc/internal/b;->a(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-static {v0}, Lio/agora/rtc/internal/b;->a(Landroid/net/NetworkInfo;)I

    move-result v2

    iput v2, v1, Lio/agora/rtc/internal/f$b;->e:I

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    iput v0, v1, Lio/agora/rtc/internal/f$b;->f:I

    :cond_2
    invoke-static {}, Lio/agora/rtc/internal/b;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lio/agora/rtc/internal/f$b;->l:Ljava/util/ArrayList;

    iget v0, v1, Lio/agora/rtc/internal/f$b;->e:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_8

    invoke-direct {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ""

    iput-object v0, v1, Lio/agora/rtc/internal/f$b;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, v1, Lio/agora/rtc/internal/f$b;->k:Ljava/lang/String;

    iput v3, v1, Lio/agora/rtc/internal/f$b;->h:I

    iput v3, v1, Lio/agora/rtc/internal/f$b;->g:I

    move-object v0, v1

    goto :goto_0

    :cond_3
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    iget v2, v2, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v2}, Lio/agora/rtc/internal/RtcEngineImpl;->g(I)Ljava/net/InetAddress;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lio/agora/rtc/internal/f$b;->b:Ljava/lang/String;

    :cond_4
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\""

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lio/agora/rtc/internal/f$b;->j:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :goto_1
    iput-object v0, v1, Lio/agora/rtc/internal/f$b;->k:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    iput v0, v1, Lio/agora/rtc/internal/f$b;->h:I

    iget v0, v1, Lio/agora/rtc/internal/f$b;->h:I

    const/4 v3, 0x5

    invoke-static {v0, v3}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    iput v0, v1, Lio/agora/rtc/internal/f$b;->g:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_5

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v0

    const/16 v2, 0x1388

    if-lt v0, v2, :cond_7

    const/16 v0, 0x65

    iput v0, v1, Lio/agora/rtc/internal/f$b;->f:I

    :cond_5
    :goto_2
    move-object v0, v1

    goto/16 :goto_0

    :cond_6
    const-string v3, "\""

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    const/16 v2, 0x960

    if-lt v0, v2, :cond_5

    const/16 v0, 0x64

    iput v0, v1, Lio/agora/rtc/internal/f$b;->f:I

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->o:Lio/agora/rtc/internal/RtcEngineImpl$a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->o:Lio/agora/rtc/internal/RtcEngineImpl$a;

    invoke-virtual {v0}, Lio/agora/rtc/internal/RtcEngineImpl$a;->a()I

    move-result v0

    iput v0, v1, Lio/agora/rtc/internal/f$b;->h:I

    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->o:Lio/agora/rtc/internal/RtcEngineImpl$a;

    invoke-virtual {v0}, Lio/agora/rtc/internal/RtcEngineImpl$a;->b()I

    move-result v0

    iput v0, v1, Lio/agora/rtc/internal/f$b;->g:I

    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->o:Lio/agora/rtc/internal/RtcEngineImpl$a;

    invoke-virtual {v0}, Lio/agora/rtc/internal/RtcEngineImpl$a;->c()I

    move-result v0

    iput v0, v1, Lio/agora/rtc/internal/f$b;->i:I

    goto :goto_2

    :cond_9
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0, p1, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->a(Landroid/content/Context;Lio/agora/rtc/internal/f$b;)Z

    goto :goto_2
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized c()Z
    .locals 2

    const-class v1, Lio/agora/rtc/internal/RtcEngineImpl;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lio/agora/rtc/internal/RtcEngineImpl;->j:Z

    if-nez v0, :cond_0

    const-string v0, "agora-rtc-sdk-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeClassInit()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lio/agora/rtc/internal/RtcEngineImpl;->j:Z

    :cond_0
    sget-boolean v0, Lio/agora/rtc/internal/RtcEngineImpl;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sdcard/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "RtcEngine"

    const-string v1, "read external storage is not granted"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->s:I

    if-ne v1, v0, :cond_0

    iget v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->t:I

    :cond_0
    invoke-direct {p0, p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->a(Landroid/content/Context;I)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "RtcEngine"

    const-string v1, "can\'t join channel because no permission"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x9

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f(I)V
    .locals 12

    const/16 v11, 0x28

    const/16 v10, 0x14

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lio/agora/rtc/internal/RtcEngineImpl;->f:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x64

    cmp-long v0, v6, v8

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    int-to-double v6, p1

    const-wide v8, 0x4056800000000000L    # 90.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    const-wide/16 v8, 0x5a

    mul-long/2addr v6, v8

    long-to-int v0, v6

    rem-int/lit16 v0, v0, 0x168

    const/4 v3, 0x0

    sub-int v6, v0, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v10, :cond_5

    move v3, v2

    :cond_1
    :goto_1
    if-nez v0, :cond_7

    const/16 v6, 0xb4

    if-le p1, v6, :cond_7

    rsub-int v6, p1, 0x168

    if-ge v6, v10, :cond_6

    move v1, v2

    :cond_2
    :goto_2
    if-lez v1, :cond_4

    :try_start_0
    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    iget v6, p0, Lio/agora/rtc/internal/RtcEngineImpl;->c:I

    invoke-static {v6, v3}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v3, v3, Landroid/hardware/Camera$CameraInfo;->orientation:I

    if-ne v1, v2, :cond_8

    move v1, v0

    :goto_3
    iget-boolean v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->r:Z

    if-eqz v0, :cond_9

    rsub-int v0, v1, 0x168

    rem-int/lit16 v0, v0, 0x168

    add-int/2addr v0, v3

    rem-int/lit16 v0, v0, 0x168

    :goto_4
    iget v2, p0, Lio/agora/rtc/internal/RtcEngineImpl;->g:I

    if-eq v0, v2, :cond_3

    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->b(II)I

    :cond_3
    iput v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->g:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_5
    iput-wide v4, p0, Lio/agora/rtc/internal/RtcEngineImpl;->f:J

    goto :goto_0

    :cond_5
    sub-int v6, v0, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v11, :cond_1

    move v3, v1

    goto :goto_1

    :cond_6
    rsub-int v6, p1, 0x168

    if-lt v6, v11, :cond_2

    :cond_7
    move v1, v3

    goto :goto_2

    :cond_8
    add-int/lit8 v0, v0, 0x5

    move v1, v0

    goto :goto_3

    :cond_9
    add-int v0, v1, v3

    :try_start_1
    rem-int/lit16 v0, v0, 0x168
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v1, "RtcEngine"

    const-string v2, "Unable to get camera info, "

    invoke-static {v1, v2, v0}, Lio/agora/rtc/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method private f(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p1, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static g(I)Ljava/net/InetAddress;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {p1, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected static i()Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "usb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-static {v0}, Lio/agora/rtc/internal/RtcEngineImpl;->a(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()I
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->e:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->e:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->e:Landroid/view/OrientationEventListener;

    :cond_0
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->n:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->n:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->n:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    const-string v0, "RtcEngine"

    const-string v1, "hp connection mode ended"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static native nativeClassInit()I
.end method

.method private native nativeDestroy(J)I
.end method

.method private native nativeGetParameter(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeJoinChannel(J[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method private native nativeLeaveChannel(J)I
.end method

.method static native nativeLog(ILjava/lang/String;)I
.end method

.method private native nativeNotifyNetworkChange(J[B)I
.end method

.method private native nativeObjectInit(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private native nativeSetParameters(JLjava/lang/String;)I
.end method

.method private native setExtVideoSource(JII)I
.end method


# virtual methods
.method public a(I)I
    .locals 2

    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->w:Lio/agora/rtc/internal/a;

    if-nez v0, :cond_0

    const/4 v0, -0x7

    :goto_0
    return v0

    :cond_0
    iput p1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->s:I

    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->w:Lio/agora/rtc/internal/a;

    const/16 v1, 0x14

    invoke-virtual {v0, v1, p1}, Lio/agora/rtc/internal/a;->a(II)V

    const-string v0, "rtc.channel_profile"

    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->a(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public a(II)I
    .locals 5

    const/4 v0, 0x0

    if-gez p1, :cond_0

    move p1, v0

    :cond_0
    const-string v1, "che.audio.volume_indication"

    const-string v2, "{\"interval\":%d,\"smooth\":%d}"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lio/agora/rtc/internal/RtcEngineImpl;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(IZ)I
    .locals 8

    const-string v0, "{\"rtc.audio.mute_peer\":{\"uid\":%d,\"mute\":%b}}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    int-to-long v4, p1

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)I
    .locals 2

    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->h:J

    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetParameters(JLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 9

    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, -0x7

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->b(Landroid/content/Context;)Lio/agora/rtc/internal/f$a;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->a(Landroid/content/Context;Lio/agora/rtc/internal/f$a;)V

    invoke-direct {p0, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->e(Landroid/content/Context;)I

    iget-boolean v2, p0, Lio/agora/rtc/internal/RtcEngineImpl;->b:Z

    if-eqz v2, :cond_2

    :try_start_0
    iget-object v2, p0, Lio/agora/rtc/internal/RtcEngineImpl;->e:Landroid/view/OrientationEventListener;

    if-nez v2, :cond_1

    new-instance v2, Lio/agora/rtc/internal/RtcEngineImpl$1;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v0, v3}, Lio/agora/rtc/internal/RtcEngineImpl$1;-><init>(Lio/agora/rtc/internal/RtcEngineImpl;Landroid/content/Context;I)V

    iput-object v2, p0, Lio/agora/rtc/internal/RtcEngineImpl;->e:Landroid/view/OrientationEventListener;

    :cond_1
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->e:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->c:I

    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->e(I)I

    :cond_2
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->i:Lio/agora/rtc/b;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->i:Lio/agora/rtc/b;

    invoke-virtual {v0}, Lio/agora/rtc/b;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p3, :cond_3

    const-string v0, "RtcEngine"

    const-string v2, "override optionalInfo by publisherConfiguration"

    invoke-static {v0, v2}, Lio/agora/rtc/internal/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->i:Lio/agora/rtc/b;

    invoke-virtual {v0}, Lio/agora/rtc/b;->b()Ljava/lang/String;

    move-result-object p3

    move-object v7, p3

    :goto_2
    iget-wide v2, p0, Lio/agora/rtc/internal/RtcEngineImpl;->h:J

    invoke-virtual {v1}, Lio/agora/rtc/internal/f$a;->a()[B

    move-result-object v4

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    move v8, p4

    invoke-direct/range {v1 .. v8}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeJoinChannel(J[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "RtcEngine"

    const-string v3, "Unable to create OrientationEventListener, "

    invoke-static {v2, v3, v0}, Lio/agora/rtc/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    move-object v7, p3

    goto :goto_2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->h:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeGetParameter(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(ZZZ)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iput-boolean p1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->d:Z

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    const-string v1, "che.video.enable_external_texture_input"

    invoke-direct {p0, v1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->a(Ljava/lang/String;Z)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "che.video.enable_external_texture_input"

    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->a(Ljava/lang/String;Z)I

    const-string v0, "setVideoSource: on Android, texture mode cannot be disabled once enabled."

    invoke-static {v0}, Lio/agora/rtc/internal/d;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-wide v4, p0, Lio/agora/rtc/internal/RtcEngineImpl;->h:J

    if-eqz p1, :cond_2

    move v2, v0

    :goto_1
    if-eqz p3, :cond_3

    :goto_2
    invoke-direct {p0, v4, v5, v2, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->setExtVideoSource(JII)I

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public a(Z)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_3

    const-string v2, "android.permission.WAKE_LOCK"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    iput-object v3, p0, Lio/agora/rtc/internal/RtcEngineImpl;->n:Landroid/net/wifi/WifiManager$WifiLock;

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->n:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v1, :cond_2

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const/4 v1, 0x3

    const-string v2, "agora.voip.lock"

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->n:Landroid/net/wifi/WifiManager$WifiLock;

    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iput-object v3, p0, Lio/agora/rtc/internal/RtcEngineImpl;->n:Landroid/net/wifi/WifiManager$WifiLock;

    goto :goto_1
.end method

.method public b()I
    .locals 2

    invoke-direct {p0}, Lio/agora/rtc/internal/RtcEngineImpl;->k()V

    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->w:Lio/agora/rtc/internal/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->w:Lio/agora/rtc/internal/a;

    invoke-virtual {v0}, Lio/agora/rtc/internal/a;->c()V

    :cond_0
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->h:J

    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeLeaveChannel(J)I

    move-result v0

    return v0
.end method

.method public b(I)I
    .locals 1

    const/16 v0, 0x190

    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    const-string v0, "che.audio.playout.signal.volume"

    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->a(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_1
    if-le p1, v0, :cond_0

    move p1, v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)I
    .locals 1

    const-string v0, "rtc.log_file"

    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Lio/agora/rtc/a;)V
    .locals 0

    iput-object p3, p0, Lio/agora/rtc/internal/RtcEngineImpl;->k:Lio/agora/rtc/a;

    return-void
.end method

.method public b(Z)V
    .locals 4

    if-eqz p1, :cond_1

    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->m:Lio/agora/rtc/internal/ConnectionChangeBroadcastReceiver;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lio/agora/rtc/internal/ConnectionChangeBroadcastReceiver;

    invoke-direct {v0, p0}, Lio/agora/rtc/internal/ConnectionChangeBroadcastReceiver;-><init>(Lio/agora/rtc/internal/RtcEngineImpl;)V

    iput-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->m:Lio/agora/rtc/internal/ConnectionChangeBroadcastReceiver;

    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->m:Lio/agora/rtc/internal/ConnectionChangeBroadcastReceiver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->m:Lio/agora/rtc/internal/ConnectionChangeBroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "RtcEngine"

    const-string v2, "Unable to create ConnectionChangeBroadcastReceiver, "

    invoke-static {v1, v2, v0}, Lio/agora/rtc/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->m:Lio/agora/rtc/internal/ConnectionChangeBroadcastReceiver;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->m:Lio/agora/rtc/internal/ConnectionChangeBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->m:Lio/agora/rtc/internal/ConnectionChangeBroadcastReceiver;

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public c(Z)I
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "API call to setEnableSpeakerphone to %b"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/agora/rtc/internal/d;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lio/agora/rtc/internal/RtcEngineImpl;->w:Lio/agora/rtc/internal/a;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/agora/rtc/internal/RtcEngineImpl;->w:Lio/agora/rtc/internal/a;

    const/16 v3, 0xb

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v3, v0}, Lio/agora/rtc/internal/a;->a(II)V

    :goto_1
    return v1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, -0x7

    goto :goto_1
.end method

.method public c(I)V
    .locals 1

    const-string v0, "che.audio.output.routing"

    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->a(Ljava/lang/String;I)I

    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->k:Lio/agora/rtc/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->k:Lio/agora/rtc/a;

    invoke-virtual {v0, p1}, Lio/agora/rtc/a;->onAudioRouteChanged(I)V

    :cond_0
    return-void
.end method

.method public d(Z)I
    .locals 4

    const-string v0, "{\"rtc.audio.mute_me\":%b, \"che.audio.mute_me\":%b}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public d()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->a(ZZZ)V

    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->w:Lio/agora/rtc/internal/a;

    invoke-virtual {v0}, Lio/agora/rtc/internal/a;->b()V

    iput-object v2, p0, Lio/agora/rtc/internal/RtcEngineImpl;->w:Lio/agora/rtc/internal/a;

    invoke-virtual {p0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->b(Z)V

    iput-object v2, p0, Lio/agora/rtc/internal/RtcEngineImpl;->e:Landroid/view/OrientationEventListener;

    iput-object v2, p0, Lio/agora/rtc/internal/RtcEngineImpl;->o:Lio/agora/rtc/internal/RtcEngineImpl$a;

    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->h:J

    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeDestroy(J)I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->h:J

    return-void
.end method

.method public d(I)V
    .locals 3

    const-string v0, "RtcEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on Audio routing error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->k:Lio/agora/rtc/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->k:Lio/agora/rtc/a;

    invoke-virtual {v0, p1}, Lio/agora/rtc/a;->onError(I)V

    :cond_0
    return-void
.end method

.method public e()I
    .locals 1

    const-string v0, "{\"rtc.audio.enabled\":true,\"che.disable.audio\":false}"

    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public e(I)I
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->b:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->d:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iput p1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->c:I

    iget v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->c:I

    if-ne v1, v0, :cond_2

    :goto_1
    iput-boolean v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->r:Z

    const-string v0, "che.video.local.camera_index"

    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->a(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public e(Z)I
    .locals 1

    const-string v0, "rtc.audio.mute_peers"

    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->a(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    const-string v0, "{\"rtc.audio.enabled\":false,\"che.disable.audio\":true}"

    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public finalize()V
    .locals 4

    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->h:J

    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeDestroy(J)I

    :cond_0
    return-void
.end method

.method protected g()[B
    .locals 1

    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->c(Landroid/content/Context;)Lio/agora/rtc/internal/f$b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/agora/rtc/internal/f$b;->a()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()V
    .locals 3

    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->h:J

    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineImpl;->g()[B

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeNotifyNetworkChange(J[B)I

    return-void
.end method
