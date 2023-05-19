.class public final synthetic Lcom/shanlitech/et/core/c/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/shanlitech/et/core/c/h;


# direct methods
.method public synthetic constructor <init>(Lcom/shanlitech/et/core/c/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shanlitech/et/core/c/a;->a:Lcom/shanlitech/et/core/c/h;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/shanlitech/et/core/c/a;->a:Lcom/shanlitech/et/core/c/h;

    invoke-static {v0}, Lcom/shanlitech/et/core/c/h;->p(Lcom/shanlitech/et/core/c/h;)Z

    return-void
.end method
