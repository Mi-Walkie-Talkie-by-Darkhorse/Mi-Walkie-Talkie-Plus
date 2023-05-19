.class Lcom/ifengyu/intercom/p/j0$a;
.super Lcom/ifengyu/library/b/e/a;
.source "UserPrivacyReportUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/p/j0;->h(Ljava/util/Map;Lcom/ifengyu/library/b/d/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/library/b/d/a;


# direct methods
.method constructor <init>(Lcom/ifengyu/library/b/d/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/p/j0$a;->a:Lcom/ifengyu/library/b/d/a;

    invoke-direct {p0}, Lcom/ifengyu/library/b/e/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/library/http/exception/NewApiException;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/p/j0$a;->a:Lcom/ifengyu/library/b/d/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/ifengyu/library/b/d/a;->a(Lcom/ifengyu/library/http/exception/NewApiException;)V

    :cond_0
    return-void
.end method
