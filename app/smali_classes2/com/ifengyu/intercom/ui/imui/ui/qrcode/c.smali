.class final synthetic Lcom/ifengyu/intercom/ui/imui/ui/qrcode/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final a:Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/c;->a:Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/c;->a:Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;

    invoke-virtual {v0, p1, p2}, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;->b(Landroid/content/DialogInterface;I)V

    return-void
.end method
