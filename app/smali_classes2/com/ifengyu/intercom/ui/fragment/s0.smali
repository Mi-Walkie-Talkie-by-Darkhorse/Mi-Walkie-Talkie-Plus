.class public final synthetic Lcom/ifengyu/intercom/ui/fragment/s0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/huawei/hms/hmsscankit/OnResultCallback;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/s0;->a:Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;

    return-void
.end method


# virtual methods
.method public final onResult([Lcom/huawei/hms/ml/scan/HmsScan;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/s0;->a:Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->D3([Lcom/huawei/hms/ml/scan/HmsScan;)V

    return-void
.end method
