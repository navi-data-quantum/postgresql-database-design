INSERT INTO organizations (id, name)
VALUES
    ('11111111-1111-4111-8111-111111111111', 'Northstar Services');

INSERT INTO users (id, email, full_name)
VALUES
    ('22222222-2222-4222-8222-222222222222', 'alice@example.com', 'Alice Morgan'),
    ('33333333-3333-4333-8333-333333333333', 'john@example.com', 'John Carter');

INSERT INTO services (
    id,
    organization_id,
    name,
    description,
    duration_minutes,
    price
)
VALUES
    (
        '44444444-4444-4444-8444-444444444444',
        '11111111-1111-4111-8111-111111111111',
        'Consultation',
        'Professional consultation session',
        60,
        75.00
    ),
    (
        '55555555-5555-4555-8555-555555555555',
        '11111111-1111-4111-8111-111111111111',
        'Technical Support',
        'Technical support session',
        30,
        40.00
    );

INSERT INTO employees (
    id,
    organization_id,
    full_name,
    email
)
VALUES
    (
        '66666666-6666-4666-8666-666666666666',
        '11111111-1111-4111-8111-111111111111',
        'Sarah Wilson',
        'sarah@northstar.example'
    ),
    (
        '77777777-7777-4777-8777-777777777777',
        '11111111-1111-4111-8111-111111111111',
        'Michael Brown',
        'michael@northstar.example'
    );

INSERT INTO bookings (
    id,
    user_id,
    service_id,
    employee_id,
    starts_at,
    ends_at,
    status
)
VALUES
    (
        '88888888-8888-4888-8888-888888888888',
        '22222222-2222-4222-8222-222222222222',
        '44444444-4444-4444-8444-444444444444',
        '66666666-6666-4666-8666-666666666666',
        '2026-11-10 10:00:00+00',
        '2026-11-10 11:00:00+00',
        'confirmed'
    ),
    (
        '99999999-9999-4999-8999-999999999999',
        '33333333-3333-4333-8333-333333333333',
        '55555555-5555-4555-8555-555555555555',
        '77777777-7777-4777-8777-777777777777',
        '2026-11-11 14:00:00+00',
        '2026-11-11 14:30:00+00',
        'completed'
    );

INSERT INTO payments (
    id,
    booking_id,
    amount,
    currency,
    status,
    paid_at
)
VALUES
    (
        'aaaaaaaa-aaaa-4aaa-8aaa-aaaaaaaaaaaa',
        '88888888-8888-4888-8888-888888888888',
        75.00,
        'USD',
        'paid',
        '2026-11-10 09:45:00+00'
    ),
    (
        'bbbbbbbb-bbbb-4bbb-8bbb-bbbbbbbbbbbb',
        '99999999-9999-4999-8999-999999999999',
        40.00,
        'USD',
        'paid',
        '2026-11-11 13:45:00+00'
    );
