.class public final synthetic Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBtEarGuide1Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBtEarGuide1Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/b;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBtEarGuide1Activity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/b;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBtEarGuide1Activity;

    check-cast p1, Lcom/ifengyu/intercom/http/entity/VersionInfo;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBtEarGuide1Activity;->J(Lcom/ifengyu/intercom/http/entity/VersionInfo;)V

    return-void
.end method
