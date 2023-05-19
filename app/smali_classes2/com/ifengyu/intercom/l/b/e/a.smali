.class public final synthetic Lcom/ifengyu/intercom/l/b/e/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Landroidx/lifecycle/o;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/l/b/e/a;->a:Landroidx/lifecycle/o;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/a;->a:Landroidx/lifecycle/o;

    check-cast p1, Lcom/ifengyu/intercom/http/entity/VersionInfo;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    return-void
.end method
