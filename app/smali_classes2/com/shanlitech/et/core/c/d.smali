.class public final synthetic Lcom/shanlitech/et/core/c/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/shanlitech/et/c/c$b;


# instance fields
.field public final synthetic a:Lcom/shanlitech/et/core/c/r;


# direct methods
.method public synthetic constructor <init>(Lcom/shanlitech/et/core/c/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shanlitech/et/core/c/d;->a:Lcom/shanlitech/et/core/c/r;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/shanlitech/et/core/c/d;->a:Lcom/shanlitech/et/core/c/r;

    invoke-virtual {v0, p1}, Lcom/shanlitech/et/core/c/r;->j(Landroid/content/Context;)V

    return-void
.end method
