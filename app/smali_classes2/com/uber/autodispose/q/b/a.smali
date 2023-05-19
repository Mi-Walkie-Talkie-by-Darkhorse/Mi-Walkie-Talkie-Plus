.class public final synthetic Lcom/uber/autodispose/q/b/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/uber/autodispose/q/b/d;


# direct methods
.method public synthetic constructor <init>(Lcom/uber/autodispose/q/b/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/uber/autodispose/q/b/a;->a:Lcom/uber/autodispose/q/b/d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/uber/autodispose/q/b/a;->a:Lcom/uber/autodispose/q/b/d;

    invoke-virtual {v0}, Lcom/uber/autodispose/q/b/d;->a()V

    return-void
.end method
