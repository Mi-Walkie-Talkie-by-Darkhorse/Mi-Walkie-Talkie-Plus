.class Lcom/ifengyu/talk/f/b0$a;
.super Lcom/ifengyu/library/b/e/a;
.source "ExternalMsgHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/talk/f/b0;->p(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/ifengyu/talk/f/b0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/library/b/e/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/library/http/exception/NewApiException;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/talk/f/b0;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getSpeechMsg fail"

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
