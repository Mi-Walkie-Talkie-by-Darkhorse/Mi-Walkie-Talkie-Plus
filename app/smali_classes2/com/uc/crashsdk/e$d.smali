.class final Lcom/uc/crashsdk/e$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/crashsdk/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field a:J

.field b:J

.field c:I

.field d:I

.field e:Z

.field f:Z

.field g:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/uc/crashsdk/e$d;->a:J

    iput-wide v0, p0, Lcom/uc/crashsdk/e$d;->b:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/uc/crashsdk/e$d;->c:I

    iput v0, p0, Lcom/uc/crashsdk/e$d;->d:I

    iput-boolean v0, p0, Lcom/uc/crashsdk/e$d;->e:Z

    iput-boolean v0, p0, Lcom/uc/crashsdk/e$d;->f:Z

    iput-boolean v0, p0, Lcom/uc/crashsdk/e$d;->g:Z

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/uc/crashsdk/e$d;-><init>()V

    return-void
.end method
