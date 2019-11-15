.class public Lcom/sina/weibo/sdk/exception/WeiboHttpException;
.super Lcom/sina/weibo/sdk/exception/WeiboException;
.source "WeiboHttpException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/sina/weibo/sdk/exception/WeiboHttpException;->a:I

    return-void
.end method
