.class public Lcom/xiaomi/channel/common/audio/PlayerObservable;
.super Ljava/util/Observable;
.source "PlayerObservable.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyObservers(Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0}, Ljava/util/Observable;->setChanged()V

    invoke-super {p0, p1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method
