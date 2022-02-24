.class public final synthetic Lcom/ifengyu/library/a/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic a:Lcom/ifengyu/library/a/c;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/library/a/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/library/a/a;->a:Lcom/ifengyu/library/a/c;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/library/a/a;->a:Lcom/ifengyu/library/a/c;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {v0, p1}, Lcom/ifengyu/library/a/c;->a(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
