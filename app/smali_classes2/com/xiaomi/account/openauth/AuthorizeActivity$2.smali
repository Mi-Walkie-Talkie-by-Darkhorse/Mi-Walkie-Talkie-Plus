.class Lcom/xiaomi/account/openauth/AuthorizeActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/account/openauth/AuthorizeActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/account/openauth/AuthorizeActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/openauth/AuthorizeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity$2;->this$0:Lcom/xiaomi/account/openauth/AuthorizeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p1, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity$2;->this$0:Lcom/xiaomi/account/openauth/AuthorizeActivity;

    invoke-virtual {p1}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->refreshWebView()V

    const/4 p1, 0x1

    return p1
.end method
