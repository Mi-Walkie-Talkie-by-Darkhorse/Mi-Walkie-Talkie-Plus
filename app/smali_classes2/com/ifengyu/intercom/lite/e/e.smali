.class public final synthetic Lcom/ifengyu/intercom/lite/e/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic a:Lcom/ifengyu/intercom/lite/e/f;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/lite/e/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/e/e;->a:Lcom/ifengyu/intercom/lite/e/f;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/e/e;->a:Lcom/ifengyu/intercom/lite/e/f;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/lite/e/f;->a(Ljava/lang/Throwable;)V

    return-void
.end method
