.class public final synthetic Lcom/shanlitech/et/notice/n;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lcom/shanlitech/et/notice/n;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shanlitech/et/notice/n;

    invoke-direct {v0}, Lcom/shanlitech/et/notice/n;-><init>()V

    sput-object v0, Lcom/shanlitech/et/notice/n;->a:Lcom/shanlitech/et/notice/n;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/shanlitech/et/notice/EchatNoticeSender;->j()V

    return-void
.end method
