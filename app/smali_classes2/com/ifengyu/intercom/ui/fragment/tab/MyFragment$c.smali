.class Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment$c;
.super Lcom/ifengyu/library/b/e/a;
.source "MyFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;->E3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/library/b/e/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/library/http/exception/NewApiException;)V
    .locals 1

    const-string p1, "MyFragment"

    const-string v0, "querySelfInfo fail"

    .line 1
    invoke-static {p1, v0}, Lcom/ifengyu/intercom/p/y;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method