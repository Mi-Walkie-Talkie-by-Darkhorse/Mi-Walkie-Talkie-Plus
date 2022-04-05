.class Lcom/liulishuo/okdownload/core/listener/DownloadListener4$Listener4ModelCreator;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ModelCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/okdownload/core/listener/DownloadListener4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Listener4ModelCreator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ModelCreator<",
        "Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Model;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(I)Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Model;
    .locals 1

    new-instance v0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Model;

    invoke-direct {v0, p1}, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Model;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic create(I)Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ListenerModel;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/liulishuo/okdownload/core/listener/DownloadListener4$Listener4ModelCreator;->create(I)Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Model;

    move-result-object p1

    return-object p1
.end method
