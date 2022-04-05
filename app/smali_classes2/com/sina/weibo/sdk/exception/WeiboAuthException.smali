.class public Lcom/sina/weibo/sdk/exception/WeiboAuthException;
.super Lcom/sina/weibo/sdk/exception/WeiboException;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/sina/weibo/sdk/exception/WeiboAuthException;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/sina/weibo/sdk/exception/WeiboAuthException;->b:Ljava/lang/String;

    return-void
.end method
