.class public final synthetic Lcom/ifengyu/intercom/ui/talk/c3/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/ui/talk/c3/c0;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/talk/c3/c0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/a;->a:Lcom/ifengyu/intercom/ui/talk/c3/c0;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/talk/c3/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/a;->a:Lcom/ifengyu/intercom/ui/talk/c3/c0;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/c3/a;->b:Ljava/lang/String;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1}, Lcom/ifengyu/intercom/ui/talk/c3/c0;->U(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method
