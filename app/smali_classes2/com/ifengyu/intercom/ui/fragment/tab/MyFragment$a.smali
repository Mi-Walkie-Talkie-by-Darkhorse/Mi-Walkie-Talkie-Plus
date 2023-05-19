.class Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment$a;
.super Lcom/ifengyu/library/b/e/a;
.source "MyFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;->i3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment$a;->a:Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;

    invoke-direct {p0}, Lcom/ifengyu/library/b/e/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/library/http/exception/NewApiException;)V
    .locals 2

    const-string v0, "MyFragment"

    const-string v1, "checkPrivacyInfo fail"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment$a;->a:Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;->g3(Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;)V

    return-void
.end method
