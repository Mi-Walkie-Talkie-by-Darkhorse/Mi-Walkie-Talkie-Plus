.class final synthetic Lcom/ifengyu/intercom/ui/imui/ui/qrcode/g;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/m;


# instance fields
.field private final a:Lcom/ifengyu/intercom/ui/imui/ui/qrcode/SelfQRCodeActivity;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/qrcode/SelfQRCodeActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/g;->a:Lcom/ifengyu/intercom/ui/imui/ui/qrcode/SelfQRCodeActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/g;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/l;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/g;->a:Lcom/ifengyu/intercom/ui/imui/ui/qrcode/SelfQRCodeActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/SelfQRCodeActivity;->a(Ljava/lang/String;Lio/reactivex/l;)V

    return-void
.end method
