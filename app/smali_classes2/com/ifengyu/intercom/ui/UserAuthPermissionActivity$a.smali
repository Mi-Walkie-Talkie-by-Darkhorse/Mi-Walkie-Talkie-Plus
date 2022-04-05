.class Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity$a;
.super Lcom/ifengyu/intercom/g/d/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity$a;->b:Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity;

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

    invoke-static {p2, p1}, Lcom/ifengyu/intercom/i/d0;->a(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity$a;->b:Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity;->a(Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity;Lcom/ifengyu/intercom/g/e/f;)Lcom/ifengyu/intercom/g/e/f;

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lcom/ifengyu/intercom/bean/PrivacyInfoBean;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity$a;->a(Lcom/ifengyu/intercom/bean/PrivacyInfoBean;I)V

    return-void
.end method

.method public a(Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 0

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity$a;->b:Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity;->a(Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity;Lcom/ifengyu/intercom/g/e/f;)Lcom/ifengyu/intercom/g/e/f;

    return-void
.end method
