.class public abstract Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;
.super Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
.source "MapTileFileStorageProviderBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase$MyBroadcastReceiver;
    }
.end annotation


# static fields
.field private static mSdCardAvailable:Z = true


# instance fields
.field private mBroadcastReceiver:Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase$MyBroadcastReceiver;

.field private final mRegisterReceiver:Lorg/osmdroid/tileprovider/IRegisterReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;-><init>(II)V

    .line 2
    invoke-direct {p0}, Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;->checkSdCard()V

    .line 3
    iput-object p1, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;->mRegisterReceiver:Lorg/osmdroid/tileprovider/IRegisterReceiver;

    .line 4
    new-instance p2, Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase$MyBroadcastReceiver;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase$MyBroadcastReceiver;-><init>(Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase$1;)V

    iput-object p2, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;->mBroadcastReceiver:Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase$MyBroadcastReceiver;

    .line 5
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "android.intent.action.MEDIA_MOUNTED"

    .line 6
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "android.intent.action.MEDIA_UNMOUNTED"

    .line 7
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "file"

    .line 8
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 9
    iget-object p3, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;->mBroadcastReceiver:Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase$MyBroadcastReceiver;

    invoke-interface {p1, p3, p2}, Lorg/osmdroid/tileprovider/IRegisterReceiver;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$100(Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;->checkSdCard()V

    return-void
.end method

.method private checkSdCard()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sdcard state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OsmDroid"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "mounted"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;->mSdCardAvailable:Z

    return-void
.end method

.method public static isSdCardAvailable()Z
    .locals 1

    .line 1
    sget-boolean v0, Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;->mSdCardAvailable:Z

    return v0
.end method


# virtual methods
.method public detach()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;->mBroadcastReceiver:Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase$MyBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;->mRegisterReceiver:Lorg/osmdroid/tileprovider/IRegisterReceiver;

    invoke-interface {v1, v0}, Lorg/osmdroid/tileprovider/IRegisterReceiver;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;->mBroadcastReceiver:Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase$MyBroadcastReceiver;

    .line 4
    :cond_0
    invoke-super {p0}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->detach()V

    return-void
.end method

.method protected onMediaMounted()V
    .locals 0

    return-void
.end method

.method protected onMediaUnmounted()V
    .locals 0

    return-void
.end method
