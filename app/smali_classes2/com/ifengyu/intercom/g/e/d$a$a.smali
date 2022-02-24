.class Lcom/ifengyu/intercom/g/e/d$a$a;
.super Ljava/lang/Object;
.source "PostFormRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/g/e/d$a;->a(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lcom/ifengyu/intercom/g/e/d$a;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/g/e/d$a;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/g/e/d$a$a;->c:Lcom/ifengyu/intercom/g/e/d$a;

    iput-wide p2, p0, Lcom/ifengyu/intercom/g/e/d$a$a;->a:J

    iput-wide p4, p0, Lcom/ifengyu/intercom/g/e/d$a$a;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/g/e/d$a$a;->c:Lcom/ifengyu/intercom/g/e/d$a;

    iget-object v1, v0, Lcom/ifengyu/intercom/g/e/d$a;->a:Lcom/ifengyu/intercom/g/d/b;

    iget-wide v2, p0, Lcom/ifengyu/intercom/g/e/d$a$a;->a:J

    long-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v2, v2, v3

    iget-wide v3, p0, Lcom/ifengyu/intercom/g/e/d$a$a;->b:J

    long-to-float v5, v3

    div-float/2addr v2, v5

    iget-object v0, v0, Lcom/ifengyu/intercom/g/e/d$a;->b:Lcom/ifengyu/intercom/g/e/d;

    iget v0, v0, Lcom/ifengyu/intercom/g/e/c;->e:I

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/ifengyu/intercom/g/d/b;->a(FJI)V

    return-void
.end method
