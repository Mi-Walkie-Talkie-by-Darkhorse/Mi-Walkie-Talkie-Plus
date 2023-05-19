.class public final synthetic Lcom/ifengyu/intercom/ui/fragment/a1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;

.field public final synthetic b:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/a1;->a:Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/fragment/a1;->b:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/a1;->a:Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/a1;->b:Landroid/net/Uri;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {v0, v1, p1}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->M3(Landroid/net/Uri;Ljava/lang/Long;)[Lcom/huawei/hms/ml/scan/HmsScan;

    move-result-object p1

    return-object p1
.end method
