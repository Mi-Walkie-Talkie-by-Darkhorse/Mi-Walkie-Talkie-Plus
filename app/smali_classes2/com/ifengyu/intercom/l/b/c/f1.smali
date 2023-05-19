.class public final synthetic Lcom/ifengyu/intercom/l/b/c/f1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/p;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/l/b/c/w1;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/l/b/c/w1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/l/b/c/f1;->a:Lcom/ifengyu/intercom/l/b/c/w1;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/f1;->a:Lcom/ifengyu/intercom/l/b/c/w1;

    check-cast p1, Lcom/ifengyu/intercom/http/entity/VersionInfo;

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/l/b/c/w1;->i3(Lcom/ifengyu/intercom/l/b/c/w1;Lcom/ifengyu/intercom/http/entity/VersionInfo;)V

    return-void
.end method
