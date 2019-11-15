.class public final enum Lcom/ksyun/ks3/model/HttpHeaders;
.super Ljava/lang/Enum;
.source "HttpHeaders.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ksyun/ks3/model/HttpHeaders;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lcom/ksyun/ks3/model/HttpHeaders;

.field public static final enum B:Lcom/ksyun/ks3/model/HttpHeaders;

.field public static final enum C:Lcom/ksyun/ks3/model/HttpHeaders;

.field public static final enum D:Lcom/ksyun/ks3/model/HttpHeaders;

.field public static final enum E:Lcom/ksyun/ks3/model/HttpHeaders;

.field public static final enum F:Lcom/ksyun/ks3/model/HttpHeaders;

.field public static final enum G:Lcom/ksyun/ks3/model/HttpHeaders;

.field public static final enum H:Lcom/ksyun/ks3/model/HttpHeaders;

.field public static final enum I:Lcom/ksyun/ks3/model/HttpHeaders;

.field private static final synthetic K:[Lcom/ksyun/ks3/model/HttpHeaders;

.field public static final enum a:Lcom/ksyun/ks3/model/HttpHeaders;

.field public static final enum b:Lcom/ksyun/ks3/model/HttpHeaders;

.field public static final enum c:Lcom/ksyun/ks3/model/HttpHeaders;

.field public static final enum d:Lcom/ksyun/ks3/model/HttpHeaders;

.field public static final enum e:Lcom/ksyun/ks3/model/HttpHeaders;

.field public static final enum f:Lcom/ksyun/ks3/model/HttpHeaders;

.field public static final enum g:Lcom/ksyun/ks3/model/HttpHeaders;

.field public static final enum h:Lcom/ksyun/ks3/model/HttpHeaders;

.field public static final enum i:Lcom/ksyun/ks3/model/HttpHeaders;

.field public static final enum j:Lcom/ksyun/ks3/model/HttpHeaders;

.field public static final enum k:Lcom/ksyun/ks3/model/HttpHeaders;

.field public static final enum l:Lcom/ksyun/ks3/model/HttpHeaders;

.field public static final enum m:Lcom/ksyun/ks3/model/HttpHeaders;

.field public static final enum n:Lcom/ksyun/ks3/model/HttpHeaders;

.field public static final enum o:Lcom/ksyun/ks3/model/HttpHeaders;

.field public static final enum p:Lcom/ksyun/ks3/model/HttpHeaders;

.field public static final enum q:Lcom/ksyun/ks3/model/HttpHeaders;

.field public static final enum r:Lcom/ksyun/ks3/model/HttpHeaders;

.field public static final enum s:Lcom/ksyun/ks3/model/HttpHeaders;

.field public static final enum t:Lcom/ksyun/ks3/model/HttpHeaders;

.field public static final enum u:Lcom/ksyun/ks3/model/HttpHeaders;

.field public static final enum v:Lcom/ksyun/ks3/model/HttpHeaders;

.field public static final enum w:Lcom/ksyun/ks3/model/HttpHeaders;

.field public static final enum x:Lcom/ksyun/ks3/model/HttpHeaders;

.field public static final enum y:Lcom/ksyun/ks3/model/HttpHeaders;

.field public static final enum z:Lcom/ksyun/ks3/model/HttpHeaders;


# instance fields
.field private J:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/ksyun/ks3/model/HttpHeaders;

    const-string v1, "RequestId"

    const-string v2, "x-kss-request-id"

    invoke-direct {v0, v1, v4, v2}, Lcom/ksyun/ks3/model/HttpHeaders;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->a:Lcom/ksyun/ks3/model/HttpHeaders;

    new-instance v0, Lcom/ksyun/ks3/model/HttpHeaders;

    const-string v1, "Authorization"

    const-string v2, "Authorization"

    invoke-direct {v0, v1, v5, v2}, Lcom/ksyun/ks3/model/HttpHeaders;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->b:Lcom/ksyun/ks3/model/HttpHeaders;

    new-instance v0, Lcom/ksyun/ks3/model/HttpHeaders;

    const-string v1, "Date"

    const-string v2, "Date"

    invoke-direct {v0, v1, v6, v2}, Lcom/ksyun/ks3/model/HttpHeaders;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->c:Lcom/ksyun/ks3/model/HttpHeaders;

    new-instance v0, Lcom/ksyun/ks3/model/HttpHeaders;

    const-string v1, "Host"

    const-string v2, "Host"

    invoke-direct {v0, v1, v7, v2}, Lcom/ksyun/ks3/model/HttpHeaders;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->d:Lcom/ksyun/ks3/model/HttpHeaders;

    new-instance v0, Lcom/ksyun/ks3/model/HttpHeaders;

    const-string v1, "ContentMD5"

    const-string v2, "Content-MD5"

    invoke-direct {v0, v1, v8, v2}, Lcom/ksyun/ks3/model/HttpHeaders;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->e:Lcom/ksyun/ks3/model/HttpHeaders;

    new-instance v0, Lcom/ksyun/ks3/model/HttpHeaders;

    const-string v1, "UserAgent"

    const/4 v2, 0x5

    const-string v3, "User-Agent"

    invoke-direct {v0, v1, v2, v3}, Lcom/ksyun/ks3/model/HttpHeaders;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->f:Lcom/ksyun/ks3/model/HttpHeaders;

    new-instance v0, Lcom/ksyun/ks3/model/HttpHeaders;

    const-string v1, "IfMatch"

    const/4 v2, 0x6

    const-string v3, "If-Match"

    invoke-direct {v0, v1, v2, v3}, Lcom/ksyun/ks3/model/HttpHeaders;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->g:Lcom/ksyun/ks3/model/HttpHeaders;

    new-instance v0, Lcom/ksyun/ks3/model/HttpHeaders;

    const-string v1, "IfNoneMatch"

    const/4 v2, 0x7

    const-string v3, "If-None-Match"

    invoke-direct {v0, v1, v2, v3}, Lcom/ksyun/ks3/model/HttpHeaders;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->h:Lcom/ksyun/ks3/model/HttpHeaders;

    new-instance v0, Lcom/ksyun/ks3/model/HttpHeaders;

    const-string v1, "IfModifiedSince"

    const/16 v2, 0x8

    const-string v3, "If-Modified-Since"

    invoke-direct {v0, v1, v2, v3}, Lcom/ksyun/ks3/model/HttpHeaders;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->i:Lcom/ksyun/ks3/model/HttpHeaders;

    new-instance v0, Lcom/ksyun/ks3/model/HttpHeaders;

    const-string v1, "IfUnmodifiedSince"

    const/16 v2, 0x9

    const-string v3, "If-Unmodified-Since"

    invoke-direct {v0, v1, v2, v3}, Lcom/ksyun/ks3/model/HttpHeaders;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->j:Lcom/ksyun/ks3/model/HttpHeaders;

    new-instance v0, Lcom/ksyun/ks3/model/HttpHeaders;

    const-string v1, "ContentLength"

    const/16 v2, 0xa

    const-string v3, "Content-Length"

    invoke-direct {v0, v1, v2, v3}, Lcom/ksyun/ks3/model/HttpHeaders;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->k:Lcom/ksyun/ks3/model/HttpHeaders;

    new-instance v0, Lcom/ksyun/ks3/model/HttpHeaders;

    const-string v1, "CacheControl"

    const/16 v2, 0xb

    const-string v3, "Cache-Control"

    invoke-direct {v0, v1, v2, v3}, Lcom/ksyun/ks3/model/HttpHeaders;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->l:Lcom/ksyun/ks3/model/HttpHeaders;

    new-instance v0, Lcom/ksyun/ks3/model/HttpHeaders;

    const-string v1, "ContentType"

    const/16 v2, 0xc

    const-string v3, "Content-Type"

    invoke-direct {v0, v1, v2, v3}, Lcom/ksyun/ks3/model/HttpHeaders;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->m:Lcom/ksyun/ks3/model/HttpHeaders;

    new-instance v0, Lcom/ksyun/ks3/model/HttpHeaders;

    const-string v1, "ContentDisposition"

    const/16 v2, 0xd

    const-string v3, "Content-Disposition"

    invoke-direct {v0, v1, v2, v3}, Lcom/ksyun/ks3/model/HttpHeaders;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->n:Lcom/ksyun/ks3/model/HttpHeaders;

    new-instance v0, Lcom/ksyun/ks3/model/HttpHeaders;

    const-string v1, "ContentEncoding"

    const/16 v2, 0xe

    const-string v3, "Content-Encoding"

    invoke-direct {v0, v1, v2, v3}, Lcom/ksyun/ks3/model/HttpHeaders;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->o:Lcom/ksyun/ks3/model/HttpHeaders;

    new-instance v0, Lcom/ksyun/ks3/model/HttpHeaders;

    const-string v1, "Expires"

    const/16 v2, 0xf

    const-string v3, "Expires"

    invoke-direct {v0, v1, v2, v3}, Lcom/ksyun/ks3/model/HttpHeaders;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->p:Lcom/ksyun/ks3/model/HttpHeaders;

    new-instance v0, Lcom/ksyun/ks3/model/HttpHeaders;

    const-string v1, "Range"

    const/16 v2, 0x10

    const-string v3, "Range"

    invoke-direct {v0, v1, v2, v3}, Lcom/ksyun/ks3/model/HttpHeaders;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->q:Lcom/ksyun/ks3/model/HttpHeaders;

    new-instance v0, Lcom/ksyun/ks3/model/HttpHeaders;

    const-string v1, "CannedAcl"

    const/16 v2, 0x11

    const-string v3, "x-kss-acl"

    invoke-direct {v0, v1, v2, v3}, Lcom/ksyun/ks3/model/HttpHeaders;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->r:Lcom/ksyun/ks3/model/HttpHeaders;

    new-instance v0, Lcom/ksyun/ks3/model/HttpHeaders;

    const-string v1, "AclPrivate"

    const/16 v2, 0x12

    const-string v3, "x-kss-acl-private"

    invoke-direct {v0, v1, v2, v3}, Lcom/ksyun/ks3/model/HttpHeaders;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->s:Lcom/ksyun/ks3/model/HttpHeaders;

    new-instance v0, Lcom/ksyun/ks3/model/HttpHeaders;

    const-string v1, "AclPubicRead"

    const/16 v2, 0x13

    const-string v3, "x-kss-acl-public-read"

    invoke-direct {v0, v1, v2, v3}, Lcom/ksyun/ks3/model/HttpHeaders;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->t:Lcom/ksyun/ks3/model/HttpHeaders;

    new-instance v0, Lcom/ksyun/ks3/model/HttpHeaders;

    const-string v1, "AclPublicReadWrite"

    const/16 v2, 0x14

    const-string v3, "x-kss-acl-public-write"

    invoke-direct {v0, v1, v2, v3}, Lcom/ksyun/ks3/model/HttpHeaders;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->u:Lcom/ksyun/ks3/model/HttpHeaders;

    new-instance v0, Lcom/ksyun/ks3/model/HttpHeaders;

    const-string v1, "AclPublicAuthenticatedRead"

    const/16 v2, 0x15

    const-string v3, "x-kss-acl-public-authenticated-read"

    invoke-direct {v0, v1, v2, v3}, Lcom/ksyun/ks3/model/HttpHeaders;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->v:Lcom/ksyun/ks3/model/HttpHeaders;

    new-instance v0, Lcom/ksyun/ks3/model/HttpHeaders;

    const-string v1, "GrantFullControl"

    const/16 v2, 0x16

    const-string v3, "x-kss-grant-full-control"

    invoke-direct {v0, v1, v2, v3}, Lcom/ksyun/ks3/model/HttpHeaders;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->w:Lcom/ksyun/ks3/model/HttpHeaders;

    new-instance v0, Lcom/ksyun/ks3/model/HttpHeaders;

    const-string v1, "GrantRead"

    const/16 v2, 0x17

    const-string v3, "x-kss-grant-read"

    invoke-direct {v0, v1, v2, v3}, Lcom/ksyun/ks3/model/HttpHeaders;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->x:Lcom/ksyun/ks3/model/HttpHeaders;

    new-instance v0, Lcom/ksyun/ks3/model/HttpHeaders;

    const-string v1, "GrantWrite"

    const/16 v2, 0x18

    const-string v3, "x-kss-grant-write"

    invoke-direct {v0, v1, v2, v3}, Lcom/ksyun/ks3/model/HttpHeaders;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->y:Lcom/ksyun/ks3/model/HttpHeaders;

    new-instance v0, Lcom/ksyun/ks3/model/HttpHeaders;

    const-string v1, "ServerSideEncryption"

    const/16 v2, 0x19

    const-string v3, "x-kss-server-side-encryption"

    invoke-direct {v0, v1, v2, v3}, Lcom/ksyun/ks3/model/HttpHeaders;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->z:Lcom/ksyun/ks3/model/HttpHeaders;

    new-instance v0, Lcom/ksyun/ks3/model/HttpHeaders;

    const-string v1, "ETag"

    const/16 v2, 0x1a

    const-string v3, "ETag"

    invoke-direct {v0, v1, v2, v3}, Lcom/ksyun/ks3/model/HttpHeaders;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->A:Lcom/ksyun/ks3/model/HttpHeaders;

    new-instance v0, Lcom/ksyun/ks3/model/HttpHeaders;

    const-string v1, "LastModified"

    const/16 v2, 0x1b

    const-string v3, "Last-Modified"

    invoke-direct {v0, v1, v2, v3}, Lcom/ksyun/ks3/model/HttpHeaders;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->B:Lcom/ksyun/ks3/model/HttpHeaders;

    new-instance v0, Lcom/ksyun/ks3/model/HttpHeaders;

    const-string v1, "XKssDeleteMarker"

    const/16 v2, 0x1c

    const-string v3, "x-kss-delete-marker"

    invoke-direct {v0, v1, v2, v3}, Lcom/ksyun/ks3/model/HttpHeaders;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->C:Lcom/ksyun/ks3/model/HttpHeaders;

    new-instance v0, Lcom/ksyun/ks3/model/HttpHeaders;

    const-string v1, "XKssExpiration"

    const/16 v2, 0x1d

    const-string v3, "x-kss-expiration"

    invoke-direct {v0, v1, v2, v3}, Lcom/ksyun/ks3/model/HttpHeaders;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->D:Lcom/ksyun/ks3/model/HttpHeaders;

    new-instance v0, Lcom/ksyun/ks3/model/HttpHeaders;

    const-string v1, "XKssRestore"

    const/16 v2, 0x1e

    const-string v3, "x-kss-restore"

    invoke-direct {v0, v1, v2, v3}, Lcom/ksyun/ks3/model/HttpHeaders;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->E:Lcom/ksyun/ks3/model/HttpHeaders;

    new-instance v0, Lcom/ksyun/ks3/model/HttpHeaders;

    const-string v1, "XKssWebsiteRedirectLocation"

    const/16 v2, 0x1f

    const-string v3, "x-kss-website-redirect-location"

    invoke-direct {v0, v1, v2, v3}, Lcom/ksyun/ks3/model/HttpHeaders;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->F:Lcom/ksyun/ks3/model/HttpHeaders;

    new-instance v0, Lcom/ksyun/ks3/model/HttpHeaders;

    const-string v1, "XKssCopySource"

    const/16 v2, 0x20

    const-string v3, "x-kss-copy-source"

    invoke-direct {v0, v1, v2, v3}, Lcom/ksyun/ks3/model/HttpHeaders;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->G:Lcom/ksyun/ks3/model/HttpHeaders;

    new-instance v0, Lcom/ksyun/ks3/model/HttpHeaders;

    const-string v1, "XKssCallBackUrl"

    const/16 v2, 0x21

    const-string v3, "x-kss-callbackurl"

    invoke-direct {v0, v1, v2, v3}, Lcom/ksyun/ks3/model/HttpHeaders;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->H:Lcom/ksyun/ks3/model/HttpHeaders;

    new-instance v0, Lcom/ksyun/ks3/model/HttpHeaders;

    const-string v1, "XKssCallBackBody"

    const/16 v2, 0x22

    const-string v3, "x-kss-callbackbody"

    invoke-direct {v0, v1, v2, v3}, Lcom/ksyun/ks3/model/HttpHeaders;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->I:Lcom/ksyun/ks3/model/HttpHeaders;

    const/16 v0, 0x23

    new-array v0, v0, [Lcom/ksyun/ks3/model/HttpHeaders;

    sget-object v1, Lcom/ksyun/ks3/model/HttpHeaders;->a:Lcom/ksyun/ks3/model/HttpHeaders;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ksyun/ks3/model/HttpHeaders;->b:Lcom/ksyun/ks3/model/HttpHeaders;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ksyun/ks3/model/HttpHeaders;->c:Lcom/ksyun/ks3/model/HttpHeaders;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ksyun/ks3/model/HttpHeaders;->d:Lcom/ksyun/ks3/model/HttpHeaders;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ksyun/ks3/model/HttpHeaders;->e:Lcom/ksyun/ks3/model/HttpHeaders;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/ksyun/ks3/model/HttpHeaders;->f:Lcom/ksyun/ks3/model/HttpHeaders;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ksyun/ks3/model/HttpHeaders;->g:Lcom/ksyun/ks3/model/HttpHeaders;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ksyun/ks3/model/HttpHeaders;->h:Lcom/ksyun/ks3/model/HttpHeaders;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/ksyun/ks3/model/HttpHeaders;->i:Lcom/ksyun/ks3/model/HttpHeaders;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/ksyun/ks3/model/HttpHeaders;->j:Lcom/ksyun/ks3/model/HttpHeaders;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/ksyun/ks3/model/HttpHeaders;->k:Lcom/ksyun/ks3/model/HttpHeaders;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/ksyun/ks3/model/HttpHeaders;->l:Lcom/ksyun/ks3/model/HttpHeaders;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/ksyun/ks3/model/HttpHeaders;->m:Lcom/ksyun/ks3/model/HttpHeaders;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/ksyun/ks3/model/HttpHeaders;->n:Lcom/ksyun/ks3/model/HttpHeaders;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/ksyun/ks3/model/HttpHeaders;->o:Lcom/ksyun/ks3/model/HttpHeaders;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/ksyun/ks3/model/HttpHeaders;->p:Lcom/ksyun/ks3/model/HttpHeaders;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/ksyun/ks3/model/HttpHeaders;->q:Lcom/ksyun/ks3/model/HttpHeaders;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/ksyun/ks3/model/HttpHeaders;->r:Lcom/ksyun/ks3/model/HttpHeaders;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/ksyun/ks3/model/HttpHeaders;->s:Lcom/ksyun/ks3/model/HttpHeaders;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/ksyun/ks3/model/HttpHeaders;->t:Lcom/ksyun/ks3/model/HttpHeaders;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/ksyun/ks3/model/HttpHeaders;->u:Lcom/ksyun/ks3/model/HttpHeaders;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/ksyun/ks3/model/HttpHeaders;->v:Lcom/ksyun/ks3/model/HttpHeaders;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/ksyun/ks3/model/HttpHeaders;->w:Lcom/ksyun/ks3/model/HttpHeaders;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/ksyun/ks3/model/HttpHeaders;->x:Lcom/ksyun/ks3/model/HttpHeaders;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/ksyun/ks3/model/HttpHeaders;->y:Lcom/ksyun/ks3/model/HttpHeaders;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/ksyun/ks3/model/HttpHeaders;->z:Lcom/ksyun/ks3/model/HttpHeaders;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/ksyun/ks3/model/HttpHeaders;->A:Lcom/ksyun/ks3/model/HttpHeaders;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/ksyun/ks3/model/HttpHeaders;->B:Lcom/ksyun/ks3/model/HttpHeaders;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/ksyun/ks3/model/HttpHeaders;->C:Lcom/ksyun/ks3/model/HttpHeaders;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/ksyun/ks3/model/HttpHeaders;->D:Lcom/ksyun/ks3/model/HttpHeaders;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/ksyun/ks3/model/HttpHeaders;->E:Lcom/ksyun/ks3/model/HttpHeaders;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/ksyun/ks3/model/HttpHeaders;->F:Lcom/ksyun/ks3/model/HttpHeaders;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/ksyun/ks3/model/HttpHeaders;->G:Lcom/ksyun/ks3/model/HttpHeaders;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/ksyun/ks3/model/HttpHeaders;->H:Lcom/ksyun/ks3/model/HttpHeaders;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/ksyun/ks3/model/HttpHeaders;->I:Lcom/ksyun/ks3/model/HttpHeaders;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->K:[Lcom/ksyun/ks3/model/HttpHeaders;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/ksyun/ks3/model/HttpHeaders;->J:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ksyun/ks3/model/HttpHeaders;
    .locals 1

    const-class v0, Lcom/ksyun/ks3/model/HttpHeaders;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ksyun/ks3/model/HttpHeaders;

    return-object v0
.end method

.method public static values()[Lcom/ksyun/ks3/model/HttpHeaders;
    .locals 1

    sget-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->K:[Lcom/ksyun/ks3/model/HttpHeaders;

    invoke-virtual {v0}, [Lcom/ksyun/ks3/model/HttpHeaders;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ksyun/ks3/model/HttpHeaders;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/ks3/model/HttpHeaders;->J:Ljava/lang/String;

    return-object v0
.end method
