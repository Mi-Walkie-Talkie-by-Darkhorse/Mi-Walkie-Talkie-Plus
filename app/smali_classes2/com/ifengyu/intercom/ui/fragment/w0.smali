.class public final synthetic Lcom/ifengyu/intercom/ui/fragment/w0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/w0;->a:Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/w0;->a:Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;

    check-cast p1, Lcom/ifengyu/intercom/models/DeviceModel;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->x3(Lcom/ifengyu/intercom/models/DeviceModel;)V

    return-void
.end method
