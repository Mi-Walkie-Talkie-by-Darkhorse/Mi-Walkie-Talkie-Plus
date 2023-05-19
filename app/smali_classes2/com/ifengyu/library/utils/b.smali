.class public final synthetic Lcom/ifengyu/library/utils/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(ZLjava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/ifengyu/library/utils/b;->a:Z

    iput-object p2, p0, Lcom/ifengyu/library/utils/b;->b:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-boolean v0, p0, Lcom/ifengyu/library/utils/b;->a:Z

    iget-object v1, p0, Lcom/ifengyu/library/utils/b;->b:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/s;->r(ZLjava/lang/CharSequence;)V

    return-void
.end method
