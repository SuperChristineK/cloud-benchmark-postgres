--
-- https://developer.twitter.com/en/docs/tweets/data-dictionary/overview/tweet-object.html
--

CREATE TABLE public.tweet (
    tweet_created_at timestamp without time zone,
    tweet_id bigint NOT NULL,
    tweet_id_str character varying(80) NOT NULL,
    tweet_text text,
    tweet_source character varying(200),
    tweet_truncated boolean,
    tweet_in_reply_to_status_id bigint,
    tweet_in_reply_to_status_id_str character varying(80),
    tweet_in_reply_to_user_id bigint,
    tweet_in_reply_to_user_id_str character varying(80),
    tweet_in_reply_to_screen_name character varying(80),
    tweet_coordinates jsonb,
    tweet_place jsonb,
    tweet_quoted_status_id bigint,
    tweet_quoted_status_id_str character varying(80),
    tweet_is_quote_status boolean,
    tweet_quoted_status jsonb,
    tweet_retweeted_status jsonb,
    tweet_quote_count integer,
    tweet_reply_count integer,
    tweet_retweet_count integer,
    tweet_favorite_count integer,
    tweet_entities jsonb,
    tweet_extended_entities jsonb,
    tweet_favorited boolean,
    tweet_retweeted boolean,
    tweet_possibly_sensitive boolean,
    tweet_filter_level character varying(80),
    tweet_lang character varying(80),
    tweet_matching_rules jsonb,
    user_id bigint NOT NULL,
    user_id_str character varying(80) NOT NULL,
    user_name character varying(80),
    user_screen_name character varying(80),
    user_location character varying(200),
    user_derived jsonb,
    user_url character varying(200),
    user_description character varying(400),
    user_protected boolean,
    user_verified boolean,
    user_followers_count integer,
    user_friends_count integer,
    user_listed_count integer,
    user_favourites_count integer,
    user_statuses_count integer,
    user_created_at timestamp without time zone,
    user_profile_banner_url character varying(200),
    user_profile_image_url_https character varying(400),
    user_default_profile boolean,
    user_default_profile_image boolean,
    user_withheld_in_countries jsonb,
    user_withheld_scope character varying(80)
);

ALTER TABLE public.tweet OWNER TO postgres;

ALTER TABLE ONLY public.tweet ADD CONSTRAINT tweet_id_pk PRIMARY KEY (tweet_id);

CREATE UNIQUE INDEX tweet_id_uindex ON public.tweet USING btree (tweet_id);

CREATE INDEX user_id_uindex ON public.tweet USING btree (user_id);