.class public final synthetic Lcom/ifengyu/intercom/p/i;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/p/i;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/p/i;->a:Ljava/lang/String;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/p/j0;->v(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    return-object p1
.end method
