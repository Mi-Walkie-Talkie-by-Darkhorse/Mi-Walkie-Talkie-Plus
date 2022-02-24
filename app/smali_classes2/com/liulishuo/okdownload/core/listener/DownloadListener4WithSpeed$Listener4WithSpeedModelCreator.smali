.class Lcom/liulishuo/okdownload/core/listener/DownloadListener4WithSpeed$Listener4WithSpeedModelCreator;
.super Ljava/lang/Object;
.source "DownloadListener4WithSpeed.java"

# interfaces
.implements Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ModelCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/okdownload/core/listener/DownloadListener4WithSpeed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Listener4WithSpeedModelCreator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ModelCreator<",
        "Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liulishuo/okdownload/core/listener/DownloadListener4WithSpeed$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/liulishuo/okdownload/core/listener/DownloadListener4WithSpeed$Listener4WithSpeedModelCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public create(I)Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;
    .locals 1

    .line 2
    new-instance v0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;

    invoke-direct {v0, p1}, Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic create(I)Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ListenerModel;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/liulishuo/okdownload/core/listener/DownloadListener4WithSpeed$Listener4WithSpeedModelCreator;->create(I)Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;

    move-result-object p1

    return-object p1
.end method
