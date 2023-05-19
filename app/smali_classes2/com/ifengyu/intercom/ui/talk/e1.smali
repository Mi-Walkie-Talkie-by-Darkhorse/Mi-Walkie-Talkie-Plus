.class public final synthetic Lcom/ifengyu/intercom/ui/talk/e1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/e1;->a:Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/e1;->a:Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;

    check-cast p1, Lcom/ifengyu/intercom/http/entity/JoinGroupByCodeEntity;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/talk/JoinGroupByCodeFragment;->x3(Lcom/ifengyu/intercom/http/entity/JoinGroupByCodeEntity;)V

    return-void
.end method
