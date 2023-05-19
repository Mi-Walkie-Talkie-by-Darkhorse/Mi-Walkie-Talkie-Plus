.class public final synthetic Lcom/chad/library/adapter/base/m/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/chad/library/adapter/base/m/f;


# direct methods
.method public synthetic constructor <init>(Lcom/chad/library/adapter/base/m/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chad/library/adapter/base/m/a;->a:Lcom/chad/library/adapter/base/m/f;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/chad/library/adapter/base/m/a;->a:Lcom/chad/library/adapter/base/m/f;

    invoke-static {v0}, Lcom/chad/library/adapter/base/m/f;->n(Lcom/chad/library/adapter/base/m/f;)V

    return-void
.end method
