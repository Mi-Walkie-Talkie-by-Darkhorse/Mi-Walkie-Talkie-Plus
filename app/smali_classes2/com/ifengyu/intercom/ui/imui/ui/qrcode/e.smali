.class final synthetic Lcom/ifengyu/intercom/ui/imui/ui/qrcode/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final a:Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;

.field private final b:Lcom/ifengyu/im/DB/entity/GroupEntity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;Lcom/ifengyu/im/DB/entity/GroupEntity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/e;->a:Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/e;->b:Lcom/ifengyu/im/DB/entity/GroupEntity;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/e;->a:Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/e;->b:Lcom/ifengyu/im/DB/entity/GroupEntity;

    invoke-virtual {v0, v1, p1, p2}, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;->a(Lcom/ifengyu/im/DB/entity/GroupEntity;Landroid/content/DialogInterface;I)V

    return-void
.end method
