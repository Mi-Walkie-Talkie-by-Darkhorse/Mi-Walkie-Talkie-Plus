.class final Lcom/uc/crashsdk/e$d;
.super Ljava/lang/Object;
.source "ProGuard"


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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/uc/crashsdk/e$d;->a:J

    .line 3
    iput-wide v0, p0, Lcom/uc/crashsdk/e$d;->b:J

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/uc/crashsdk/e$d;->c:I

    .line 5
    iput v0, p0, Lcom/uc/crashsdk/e$d;->d:I

    .line 6
    iput-boolean v0, p0, Lcom/uc/crashsdk/e$d;->e:Z

    .line 7
    iput-boolean v0, p0, Lcom/uc/crashsdk/e$d;->f:Z

    .line 8
    iput-boolean v0, p0, Lcom/uc/crashsdk/e$d;->g:Z

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/uc/crashsdk/e$d;-><init>()V

    return-void
.end method
