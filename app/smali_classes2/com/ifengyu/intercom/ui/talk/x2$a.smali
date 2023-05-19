.class Lcom/ifengyu/intercom/ui/talk/x2$a;
.super Lcom/ifengyu/library/b/e/a;
.source "CreateCodeToCreateGroupFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/talk/x2;->N3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/talk/x2;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/talk/x2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/x2$a;->a:Lcom/ifengyu/intercom/ui/talk/x2;

    invoke-direct {p0}, Lcom/ifengyu/library/b/e/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/library/http/exception/NewApiException;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/x2$a;->a:Lcom/ifengyu/intercom/ui/talk/x2;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/talk/x2;->q3(Lcom/ifengyu/intercom/ui/talk/x2;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getCreateGroupCodeUserInfo fail"

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/p/y;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/x2$a;->a:Lcom/ifengyu/intercom/ui/talk/x2;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/talk/x2;->r3(Lcom/ifengyu/intercom/ui/talk/x2;)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/x2$a;->a:Lcom/ifengyu/intercom/ui/talk/x2;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/talk/x2;->s3(Lcom/ifengyu/intercom/ui/talk/x2;)V

    return-void
.end method
