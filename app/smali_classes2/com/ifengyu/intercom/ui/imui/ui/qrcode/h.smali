.class final synthetic Lcom/ifengyu/intercom/ui/imui/ui/qrcode/h;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/b/f;


# instance fields
.field private final a:Lcom/ifengyu/intercom/ui/imui/ui/qrcode/SelfQRCodeActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/qrcode/SelfQRCodeActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/h;->a:Lcom/ifengyu/intercom/ui/imui/ui/qrcode/SelfQRCodeActivity;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/h;->a:Lcom/ifengyu/intercom/ui/imui/ui/qrcode/SelfQRCodeActivity;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/SelfQRCodeActivity;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
