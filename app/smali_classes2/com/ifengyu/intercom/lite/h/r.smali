.class public final synthetic Lcom/ifengyu/intercom/lite/h/r;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic a:Lcom/ifengyu/intercom/lite/h/g0;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/lite/h/g0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/h/r;->a:Lcom/ifengyu/intercom/lite/h/g0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/r;->a:Lcom/ifengyu/intercom/lite/h/g0;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/lite/h/g0;->b(Ljava/lang/Throwable;)V

    return-void
.end method
