.class Lcom/xiaomi/account/openauth/AuthorizeActivity$1;
.super Ljava/lang/Object;
.source "AuthorizeActivity.java"

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

    iput-object p1, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity$1;->this$0:Lcom/xiaomi/account/openauth/AuthorizeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity$1;->this$0:Lcom/xiaomi/account/openauth/AuthorizeActivity;

    invoke-virtual {v0}, Lcom/xiaomi/account/openauth/AuthorizeActivity;->refreshWebView()V

    const/4 v0, 0x1

    return v0
.end method
