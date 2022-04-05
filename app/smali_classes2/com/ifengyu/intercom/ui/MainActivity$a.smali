.class Lcom/ifengyu/intercom/ui/MainActivity$a;
.super Lcom/ifengyu/intercom/g/d/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/MainActivity;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ifengyu/intercom/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/MainActivity$a;->b:Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-direct {p0}, Lcom/ifengyu/intercom/g/d/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/bean/PrivacyInfoBean;I)V
    .locals 0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/PrivacyInfoBean;->getVersion()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const-string p2, "app"

    invoke-static {p2}, Lcom/ifengyu/intercom/i/d0;->b(Ljava/lang/String;)I

    move-result p2

    if-le p1, p2, :cond_0

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/MainActivity$a;->b:Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-static {p2, p1}, Lcom/ifengyu/intercom/ui/MainActivity;->a(Lcom/ifengyu/intercom/ui/MainActivity;I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/MainActivity$a;->b:Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/MainActivity;->a(Lcom/ifengyu/intercom/ui/MainActivity;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lcom/ifengyu/intercom/bean/PrivacyInfoBean;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/MainActivity$a;->a(Lcom/ifengyu/intercom/bean/PrivacyInfoBean;I)V

    return-void
.end method

.method public a(Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 0

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/MainActivity$a;->b:Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/MainActivity;->a(Lcom/ifengyu/intercom/ui/MainActivity;)V

    return-void
.end method
