.class Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment$b;
.super Lcom/ifengyu/library/b/e/a;
.source "JoinGroupByCodeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->D3(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment$b;->a:Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;

    invoke-direct {p0}, Lcom/ifengyu/library/b/e/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/library/http/exception/NewApiException;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment$b;->a:Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->h3(Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getCreateGroupCodeUserInfo fail"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment$b;->a:Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;

    invoke-virtual {p1}, Lcom/ifengyu/library/http/exception/NewApiException;->a()I

    move-result p1

    invoke-static {p1}, Lcom/ifengyu/library/b/f/a;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->i3(Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;Ljava/lang/String;)V

    return-void
.end method
