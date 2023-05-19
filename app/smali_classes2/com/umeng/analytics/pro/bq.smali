.class public Lcom/umeng/analytics/pro/bq;
.super Lcom/umeng/analytics/pro/aw;
.source "TProtocolException.java"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field public static final f:I = 0x5

.field private static final h:J = 0x1L


# instance fields
.field protected g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/umeng/analytics/pro/aw;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/umeng/analytics/pro/bq;->g:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/umeng/analytics/pro/aw;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/umeng/analytics/pro/bq;->g:I

    .line 5
    iput p1, p0, Lcom/umeng/analytics/pro/bq;->g:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0, p2}, Lcom/umeng/analytics/pro/aw;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 7
    iput p2, p0, Lcom/umeng/analytics/pro/bq;->g:I

    .line 8
    iput p1, p0, Lcom/umeng/analytics/pro/bq;->g:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 18
    invoke-direct {p0, p2, p3}, Lcom/umeng/analytics/pro/aw;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    .line 19
    iput p2, p0, Lcom/umeng/analytics/pro/bq;->g:I

    .line 20
    iput p1, p0, Lcom/umeng/analytics/pro/bq;->g:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 0

    .line 11
    invoke-direct {p0, p2}, Lcom/umeng/analytics/pro/aw;-><init>(Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    .line 12
    iput p2, p0, Lcom/umeng/analytics/pro/bq;->g:I

    .line 13
    iput p1, p0, Lcom/umeng/analytics/pro/bq;->g:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/aw;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/umeng/analytics/pro/bq;->g:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/umeng/analytics/pro/aw;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lcom/umeng/analytics/pro/bq;->g:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/aw;-><init>(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/umeng/analytics/pro/bq;->g:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/umeng/analytics/pro/bq;->g:I

    return v0
.end method
